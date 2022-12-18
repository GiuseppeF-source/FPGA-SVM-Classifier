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

entity Classifier is
  Port ( 
  Attribute_j                 : in Attr_in_array_of_std_logic_vector;                 -- Query da classificare
  SV_Alpha_Label              : in Acc_SVxAlphaxSVLabel_in_array_of_std_logic_vector; -- Vettore pre-computato
  Kernel_Scale_inv_quadro_SVM : in  std_logic_vector( 11 downto 0 ); -- Kernel_Scale^-2 
  Bias_SVM                    : in  std_logic_vector( 6 downto 0 ); -- Bias da aggiungere alla fine 
  Output_Classifier           : out std_logic; -- Per ora ultimo bit del risultato SVM ( il segno )
  RST_SVM                     : in  std_logic;
  RST_PIPE                    : in  std_logic;
  CE_PIPE                     : in  std_logic;
  CE_DSP_AxB_Cascade          : in  std_logic;
  CE_DSP_AxB_plus_C           : in  std_logic;
  CLK                         : in  std_logic
  );
end Classifier;

architecture arch of Classifier is

--component SVM is
--  Port (
--    Attribute_j_SVM        : in  portADSP_array_of_std_logic_vector; -- array di 34 elementi di tipo std_logic_vector ( query ) 
--    SV_Alpha_Label_j_SVM   : in  portBDSP_array_of_std_logic_vector; -- elementi j-esimi del vettore pre-computato
--    Kernel_Scale_inv_quadro_SVM : in  std_logic_vector( 17 downto 0 ); -- Kernel_Scale^-2
--    Bias_SVM               : in  std_logic_vector( 47 downto 0 ); -- Bias da aggiungere alla fine 
--    Output_SVM             : out std_logic_vector( 47 downto 0 );
--    RST_SVM                : in  std_logic;
--    CE_DSP_AxB_Cascade     : in  std_logic;
--    CE_DSP_AxB_plus_C      : in  std_logic;
--    CLK_SVM                : in  std_logic
--   );
--end component;

--component incremental_pipe is
--    port(
--         in_Attr_pipe    : in Attr_in_array_of_std_logic_vector;
--         in_SV_pipe      : in Acc_SVxAlphaxSVLabel_in_array_of_std_logic_vector;
--         out_Attr_pipe   : out portADSP_array_of_std_logic_vector;
--         out_SV_pipe     : out portBDSP_array_of_std_logic_vector;
--         clk             : in std_logic;
--         rstn            : in std_logic;
--         enable_transfer : in std_logic
--         );        
--end component;


signal wire_Attr_pipe_to_SVM : portADSP_array_of_std_logic_vector;
signal wire_SV_pipe_to_SVM : portBDSP_array_of_std_logic_vector;
signal wire_Kernel_Scale_to_SVM : std_logic_vector( 17 downto 0 );
signal wire_Bias_to_SVM: std_logic_vector( 47 downto 0 );
signal wire_Out_Classifier: std_logic_vector( 47 downto 0 );
signal wire_Attribute_to_pipe: Attr_in_array_of_std_logic_vector;
signal wire_SV_Alpha_Label_to_pipe: Acc_SVxAlphaxSVLabel_in_array_of_std_logic_vector;

begin
-- Kernel scale posizionato all'inizio della porta e restanti bit a 0
wire_Kernel_Scale_to_SVM( 11 downto 0 ) <= Kernel_Scale_inv_quadro_SVM;
wire_Kernel_Scale_to_SVM(17 downto 12) <= ( others => '0' );
-- Bias che, per rispettare la posizione della virgola, va shiftato a sx di 10 bit
wire_Bias_to_SVM ( 16 downto 10 ) <= Bias_SVM; 
wire_Bias_to_SVM( 9 downto 0 ) <= ( others => '0' );
wire_Bias_to_SVM ( 38 downto 17) <= ( others => Bias_SVM(6) ); --estensione con segno fino a 38, bit altro addendo + 1 per gestire complemento a 2 e overflow
wire_Bias_to_SVM ( 47 downto 39) <= (others => '0'); -- otre 37 metto 0 per evitare transazioni di bit. 

inst_SVM: entity xil_defaultlib.SVM(arch)
port map(
    Attribute_j_SVM => wire_Attr_pipe_to_SVM,
    SV_Alpha_Label_j_SVM => wire_SV_pipe_to_SVM,
    Kernel_Scale_inv_quadro_SVM => wire_Kernel_Scale_to_SVM,
    Bias_SVM => wire_Bias_to_SVM,
    Output_SVM => wire_Out_Classifier,
    RST_SVM => RST_SVM,
    CE_DSP_AxB_Cascade => CE_DSP_AxB_Cascade,
    CE_DSP_AxB_plus_C => CE_DSP_AxB_plus_C,
    CLK_SVM =>  CLK
    );

wire_Attribute_to_pipe      <= Attribute_j;
wire_SV_Alpha_Label_to_pipe <= SV_Alpha_Label;

inst_incremental_pipe: entity xil_defaultlib.incremental_pipe(arch) 
port map(
    in_Attr_pipe => wire_Attribute_to_pipe,
    in_SV_pipe => wire_SV_Alpha_Label_to_pipe,
    out_Attr_pipe => wire_Attr_pipe_to_SVM,
    out_SV_pipe => wire_SV_pipe_to_SVM,
    clk => CLK,
    rstn => RST_PIPE,
    enable_transfer => CE_PIPE 
    );    

Output_Classifier <= wire_Out_Classifier(38); -- 0 risultato positivo, 1 negativo

end arch;
