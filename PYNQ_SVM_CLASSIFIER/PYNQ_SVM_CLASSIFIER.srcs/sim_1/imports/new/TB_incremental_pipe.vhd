library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--package personal_type_pkg is
--    constant num_attribute : natural := 34; -- numero degli attribiti, in base al dataset 
--    type portADSP_array_of_std_logic_vector is array(0 to num_attribute-1) of std_logic_vector( 24 downto 0 );
--    type portBDSP_array_of_std_logic_vector is array(0 to num_attribute-1) of std_logic_vector( 17 downto 0 );
--    type Attr_in_array_of_std_logic_vector is array (0 to num_attribute-1) of std_logic_vector( 7 downto 0 );
--    type Acc_SVxAlphaxSVLabel_in_array_of_std_logic_vector is array (0 to num_attribute-1) of std_logic_vector( 11 downto 0 );
--    type portOut_array_of_std_logic_vector is array(0 to num_attribute-1) of std_logic_vector( 47 downto 0 );
--end package;

LIBRARY xil_defaultlib;
USE xil_defaultlib.personal_type_pkg.ALL;

entity TB_incremental_pipe is
end TB_incremental_pipe;

architecture arch of TB_incremental_pipe is

component incremental_pipe is
    port(
         in_Attr_pipe    : in Attr_in_array_of_std_logic_vector;
         in_SV_pipe      : in Acc_SVxAlphaxSVLabel_in_array_of_std_logic_vector;
         out_Attr_pipe   : out portADSP_array_of_std_logic_vector;
         out_SV_pipe     : out portBDSP_array_of_std_logic_vector;
         clk             : in std_logic;
         rstn            : in std_logic;
         enable_transfer : in std_logic
         );        
end component;

constant period : time := 20 ns; 
signal i_in_Attr_pipe    :  Attr_in_array_of_std_logic_vector;
signal i_in_SV_pipe      :  Acc_SVxAlphaxSVLabel_in_array_of_std_logic_vector;
signal i_out_Attr_pipe   :  portADSP_array_of_std_logic_vector;
signal i_out_SV_pipe     :  portBDSP_array_of_std_logic_vector;
signal i_clk             :  std_logic;
signal i_rstn            :  std_logic;
signal i_enable_transfer :  std_logic;

begin

UUT: incremental_pipe port map(
    in_Attr_pipe => i_in_Attr_pipe, 
    in_SV_pipe => i_in_SV_pipe, 
    out_Attr_pipe => i_out_Attr_pipe, 
    out_SV_pipe => i_out_SV_pipe,
    clk => i_clk, 
    rstn => i_rstn, 
    enable_transfer => i_enable_transfer
);

 -- continuous clock
Clock_Cycle: process              
Begin
    i_clk <= '0';
    wait for period/2;
    i_clk <= '1';
    wait for period/2;
end process;


-- variation of signal    
Input_process: process
Begin
   wait for 5*period;
   i_rstn <= '1';
   i_enable_transfer <= '1';
   wait for 30ns;
   i_enable_transfer <= '1';
   i_rstn <= '0';
   wait for 20ns;
   
   For j in 0 to num_attribute - 1 loop
       i_in_Attr_pipe(j) <= b"00000001";
       i_in_SV_pipe(j)   <= b"000000000010";
   end loop;

   wait;
end process;

end arch;
