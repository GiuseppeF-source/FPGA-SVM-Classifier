library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.all;

entity AXIS_BRAM_mng is
    Port (
        clk      : in  std_logic;
        trig     : in  std_logic;          -- trig atteso da GPIO processore
        
        -- AXI-Stream  input interface
        in_ready : out std_logic;
        in_valid : in  std_logic;
        
        -- SIPO_shift_reg_w_full signal 
        ce       : out std_logic;
        rst      : out std_logic;
        full     : in  std_logic;
        
        -- BRAM signal
        addr_ram : out std_logic_vector( 3 downto 0 );
        en_ram   : out std_logic;
        we_ram   : out std_logic
        );
end AXIS_BRAM_mng;

architecture rtl of AXIS_BRAM_mng is

    -- Gestione in_ready
    signal in_ready_i : std_logic;

    -- Gestione indirizzi RAM
    signal count_addr : natural range 0 to 15;

begin

 in_ready_i <= in_valid   and trig;   -- HIGH only if VALID = 1 and TRIG = 1 
 
-- RST = 1 when TRIG = 0 or FULL = 1  
trig_p: process (full, trig)
begin
    if trig = '0' or full = '1' then
        rst <= '1'; 
    else 
        rst <= '0';
    end if;
end process;


INCR_RAM_ADDRESS: process(clk,trig)
begin 
    if trig = '0' then
        count_addr <= 0;
    elsif rising_edge(clk) then
        if full = '1' then  
            count_addr <= count_addr + 1;
        end if;
    end if;
end process;

-- Gestione ram 
    -- FULL -> HIGH if COUNT SIPO = 13 ( last data sempled )
 we_ram   <= full;                    -- HIGH only if FULL = 1 ;
 
 en_ram   <= full;                    -- HIGH only if FULL = 1 ; 
 
 addr_ram <= conv_std_logic_vector( count_addr, 4 );

-- Gestione READY 
 in_ready <= in_ready_i;

-- Gestione SIPO
 ce        <= in_ready_i and in_valid; -- HIGH only if VALID = 1 and READY = 1  

end rtl;
