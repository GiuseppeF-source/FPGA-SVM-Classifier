library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package personal_type_pkg is
    constant num_attribute : natural := 34; -- numero degli attribiti, in base al dataset 
    type portADSP_array_of_std_logic_vector is array(0 to num_attribute-1) of std_logic_vector( 24 downto 0 );
    type portBDSP_array_of_std_logic_vector is array(0 to num_attribute-1) of std_logic_vector( 17 downto 0 );
    type Attr_in_array_of_std_logic_vector is array (0 to num_attribute-1) of std_logic_vector( 7 downto 0 );
    type Acc_SVxAlphaxSVLabel_in_array_of_std_logic_vector is array ( 0 to num_attribute-1 ) of std_logic_vector( 11 downto 0 );
    type portOut_array_of_std_logic_vector is array(0 to num_attribute-1) of std_logic_vector( 47 downto 0 );
end package;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--LIBRARY xil_defaultlib;
--USE xil_defaultlib.personal_type_pkg.ALL;

USE work.personal_type_pkg.ALL;

entity incremental_pipe is
    port(
         in_Attr_pipe    : in Attr_in_array_of_std_logic_vector;
         in_SV_pipe      : in Acc_SVxAlphaxSVLabel_in_array_of_std_logic_vector;
         out_Attr_pipe   : out portADSP_array_of_std_logic_vector;
         out_SV_pipe     : out portBDSP_array_of_std_logic_vector;
         clk             : in std_logic;
         rstn            : in std_logic;
         enable_transfer : in std_logic
         );        
end incremental_pipe;

architecture arch of incremental_pipe is

component double_shift_reg is
generic (
widthA : integer := 8; -- dimensione word A e B
widthB: integer  := 12;
depth: integer); -- numero reg 
Port (
   A : in std_logic_vector(widthA -1 downto 0);
   B : in std_logic_vector(widthB -1  downto 0);
   CLK: in std_logic;
   CE : in std_logic;
   RST : in std_logic;
   Out_A : out std_logic_vector ( widthA -1 downto 0);
   Out_B : out std_logic_vector ( widthB -1 downto 0)
 );
 
end component;

signal wire_shift_regA_to_Out : portADSP_array_of_std_logic_vector;
signal wire_shift_regB_to_Out : portBDSP_array_of_std_logic_vector; 
                 
begin

-- collegamento diretto tra ingresso e uscita del primo elemento
wire_shift_regA_to_Out(0)(7 downto 0)    <= in_Attr_pipe(0)(7 downto 0);
wire_shift_regA_to_Out(0)(24 downto 8 )  <= ( others => '0');
wire_shift_regB_to_Out(0)( 11 downto 0 ) <= in_SV_pipe(0)(11 downto 0);
wire_shift_regB_to_Out(0)(17 downto 12 ) <= ( others => wire_shift_regB_to_Out(0)(11) ); -- estensione con segno 

-- inizio ist. pipe incrementale
gen_double_shift_reg: 
 For i in 1 to num_attribute-1 generate 
 double_shift_reg_pm:   double_shift_reg 
    generic map (  depth => i )
    port map (
       A => in_Attr_pipe(i),
       B => in_SV_pipe(i),
       CLK => clk,
       CE => enable_transfer,
       RST => rstn,
       Out_A => wire_shift_regA_to_Out(i)( 7 downto 0),
       Out_B => wire_shift_regB_to_Out(i)( 11 downto 0) 
    );
       
   wire_shift_regA_to_Out(i)(24 downto 8 )  <= (others=>'0'); -- estensione con segno sicuro
   wire_shift_regB_to_Out(i)(17 downto 12 ) <= (others => wire_shift_regB_to_Out(i)(11) ); -- estensione con segno
 end generate;
 


out_Attr_pipe <= wire_shift_regA_to_Out;
out_SV_pipe   <= wire_shift_regB_to_Out;

end arch;
