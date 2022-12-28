library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--package personal_type_pkg is
--        constant num_attribute : natural := 34; -- numero degli attribiti, in base al dataset 
--        type portADSP_array_of_std_logic_vector is array(0 to num_attribute-1) of std_logic_vector( 24 downto 0 );
--        type portBDSP_array_of_std_logic_vector is array(0 to num_attribute-1) of std_logic_vector( 17 downto 0 );
--        type Attr_in_array_of_std_logic_vector is array (0 to num_attribute-1) of std_logic_vector( 7 downto 0 );
--        type Acc_SVxAlphaxSVLabel_in_array_of_std_logic_vector is array (0 to num_attribute-1) of std_logic_vector( 11 downto 0 );
--        type portOut_array_of_std_logic_vector is array(0 to num_attribute-1) of std_logic_vector( 47 downto 0 );
--end package;
--use work.personal_type_pkg.all;


entity SIPO_buffer is
    generic ( 
        input_width: natural := 32; 
        depth: natural := 9
);
    Port ( 
        clk: in std_logic;
        ce_sipo: in std_logic;
        rst: in std_logic;
        
        -- AXI-Stream  input interface
        in_ready : out std_logic;
        in_valid : in std_logic;
        in_data  : in std_logic_vector(input_width - 1 downto 0);
     
        -- AXI-Stream output interface
        -- out_ready : in std_logic; -- non indispensabile 
        out_valid : out std_logic;
        out_data : out std_logic_vector( 271 downto 0)-- 8bit di attributo in 2's complement *34 
   );
end SIPO_buffer;

architecture arch of SIPO_buffer is

type shift_reg_t is array (0 to depth - 1) of std_logic_vector(in_data'range);
signal  shift_reg : shift_reg_t;

-- in_ready_i e out_valid_i copie dei segnali in entity, 
-- per non dichiararli di tipo inout 
signal in_ready_i : std_logic := '0';
signal out_valid_i : std_logic := '0';

signal count : natural range 0 to 9 := 0; -- lunghezza pari a depth 

begin

PROC_SHIFT: process(clk)
begin 
    if rising_edge(clk) then 
         if rst = '1' then
            in_ready_i  <= '1';  -- riparte shift e count 
            out_valid_i <= '0'; -- dato in uscita non più valido
         
         else 
            if ( ce_sipo = '1' ) then 
                if( in_valid = '1' and in_ready_i = '1' )then
                    
                    transf_loop:
                    for i in 1 to depth-1 loop
                        shift_reg(i) <= shift_reg( i-1 ); -- shift dei 32 bit 
                    end loop;
                        shift_reg(0) <= in_data;
                    
                    if ( count = depth - 1 ) then
                        count <= 0;          -- riazzeramento del counter una volta full 
                        out_valid_i <= '1';  -- buffer full, dati validi in uscita
                        in_ready_i <= '0';   -- abbasso il ready così non ho più shift
                    else 
                        count <= count + 1;  -- si incrementa ad ogni shift, arrivato a 8 indica buffer full 
                        out_valid_i <= '0';  -- buffer non full, dati non ancora validi in uscita
                        in_ready_i <= '1'; 
                    end if;          
                end if;
            else 
                null;
            end if;
         end if;
    end if;
end process;

in_ready <= in_ready_i;
out_valid <= out_valid_i;

--- parallel output con scarto degli ultimi 16 bit a 0 
        --out_data(271 downto 240) <= shift_reg(8);
        --out_data(239 downto 208) <= shift_reg(7);
        --out_data(207 downto 176) <= shift_reg(6);
        --out_data(175 downto 144) <= shift_reg(5);
        --out_data(143 downto 112) <= shift_reg(4);
        --out_data(111 downto  80) <= shift_reg(3);
        --out_data( 79 downto  48) <= shift_reg(2);
        --out_data( 47 downto  16) <= shift_reg(1); --
        --out_data( 15 downto   0) <= shift_reg(0)(31 downto 16);
output_gen: 
for i in  depth-1 downto 1 generate 
    out_data(i*32 +15  downto i*32 - 16)<= shift_reg(i); 
end generate;
    out_data(15 downto 0 ) <= shift_reg(0)(31 downto 16); -- scarto gli ultimi 16 bit 


end arch;
