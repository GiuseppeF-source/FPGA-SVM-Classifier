library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;

entity FSM_axis_to_bram is
 Port (
 clk      : in  std_logic;
 trig     : in  std_logic;          -- trig atteso da fsm superiore
 
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
end FSM_axis_to_bram;

architecture rtl of FSM_axis_to_bram is


type t_state is ( IDLE, LOAD_SIPO, PAUSE_SIPO, WRITE_RAM );
signal  state, next_state : t_state;

signal count_addr : natural range 0 to 15 :=0;
 
signal in_ready_i : std_logic;

begin

in_ready <= in_ready_i;
 
SYNC_PROC : process (clk) 
begin
    if rising_edge(clk) then
        if trig = '0' then
            state <= IDLE; 
        else
            state <= next_state;
        end if;
    end if;
end process;

INCR_CNT: process(clk)
begin 
    if rising_edge(clk) then
        if state = WRITE_RAM then  -- like an enable
            count_addr <= count_addr + 1;
        end if;
    end if;
end process;

OUTPUT_DECODE : process(state) 
begin
-- default
en_ram      <= '0';
we_ram      <= '0';
ce          <= '0';
rst         <= '0'; 
in_ready_i  <= '0';
----------
    case state is
        when IDLE =>
        
             rst      <= '1';
            
        when LOAD_SIPO =>
        
            in_ready_i  <= '1';
            ce        <= '1';
                        
        when PAUSE_SIPO =>
        
            null;
                        
        when WRITE_RAM =>
        
            en_ram    <= '1';
            we_ram    <= '1';
            addr_ram  <= conv_std_logic_vector( count_addr, 4 );
                                                                         
    end case;
end process;
 
NEXT_STATE_DECODE : process ( state, trig, in_valid, in_ready_i, full ) 
begin
    next_state <= state;
    case state is
    
        when IDLE =>
        
            if trig = '1' then 
                if in_valid = '1' then
                    next_state <= LOAD_SIPO; 
                else 
                    next_state <= PAUSE_SIPO ;
                end if;
            end if; 
            
        when LOAD_SIPO =>
        
            if full = '1' then
                next_state <= WRITE_RAM;
            else 
                if in_valid = '0' then
                   next_state <= PAUSE_SIPO; 
                end if;
            end if;
             
        when PAUSE_SIPO =>
            
            if in_valid = '1' then
                next_state <= LOAD_SIPO;
            end if;

        when WRITE_RAM =>
            
            next_state <= IDLE;    
                    
    end case;
end process;
        
end rtl;
