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

LIBRARY xil_defaultlib;
USE xil_defaultlib.personal_type_pkg.ALL;

entity PIPE_SVM is
  Port (
    clk                  : in  std_logic;  
    -----------
    --  PIPE 
    -----------  
    in_attribute         : in  Attr_in_array_of_std_logic_vector;                  -- array da 8 bit 
    in_pre_comp_vec      : in  Acc_SVxAlphaxSVLabel_in_array_of_std_logic_vector;  -- array da 12 bit
    in_rst_pipe          : in std_logic;
    in_ce_pipe           : in std_logic;
    -----------
    --  SVM 
    -----------
    in_kernel_scale      : in  std_logic_vector( 11 downto 0 );
    in_bias              : in  std_logic_vector(  6 downto 0 );
    in_rst_svm           : in  std_logic;
    in_CE_DSP_AxB_Cascade: in  std_logic;
    in_CE_DSP_AxB_plus_C : in  std_logic;
    out_sign             : out std_logic  
   );
end PIPE_SVM;

architecture arch of PIPE_SVM is

signal attr_pipe_to_svm    : portADSP_array_of_std_logic_vector;
signal pre_comp_vec_to_svm : portBDSP_array_of_std_logic_vector;

signal kernel_scale_to_svm : std_logic_vector( 17 downto 0 ); 
signal bias_to_svm         : std_logic_vector( 47 downto 0 );

signal out_svm             : std_logic_vector( 47 downto 0 );

begin

-- Kernel scale posizionato all'inizio della porta e restanti bit a 0
kernel_scale_to_svm( 11 downto 0 ) <= in_kernel_scale;
kernel_scale_to_svm( 17 downto 12) <= ( others => '0' );

-- Bias che, per rispettare la posizione della virgola, va shiftato a sx di 10 bit
bias_to_svm(  9 downto  0 ) <= ( others => '0' );
bias_to_svm( 16 downto 10 ) <= in_bias ( 6 downto 0 );
bias_to_svm( 38 downto 17 ) <= ( others => in_bias(6) );
bias_to_svm( 47 downto 39 ) <= ( others => '0' );

 
pm_SVM: entity xil_defaultlib.SVM(arch)
port map (
    Attribute_j_SVM                 => attr_pipe_to_svm ,
    SV_Alpha_Label_j_SVM            => pre_comp_vec_to_svm ,
    Kernel_Scale_inv_quadro_SVM     => kernel_scale_to_svm , 
    Bias_SVM                        => bias_to_svm ,
    Output_SVM                      => out_svm , 
    RST_SVM                         => in_rst_svm ,
    CE_DSP_AxB_Cascade              => in_CE_DSP_AxB_Cascade ,
    CE_DSP_AxB_plus_C               => in_CE_DSP_AxB_plus_C ,
    CLK_SVM                         => clk
);

pm_pipe: entity xil_defaultlib.incremental_pipe(arch)
port map (
    in_Attr_pipe                    => in_attribute,   
    in_SV_pipe                      => in_pre_comp_vec,
    out_Attr_pipe                   => attr_pipe_to_svm,
    out_SV_pipe                     => pre_comp_vec_to_svm,
    clk                             => clk,
    rstn                            => in_rst_pipe,
    enable_transfer                 => in_ce_pipe
);

out_sign <= out_svm(38); -- 0 risultato positivo, 1 negativo

end arch;
