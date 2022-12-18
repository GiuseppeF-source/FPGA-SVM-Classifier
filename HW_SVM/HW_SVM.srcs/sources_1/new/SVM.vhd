----------------------------------------------------------------------------------
-- SVM unione di: 
-- 34 DSP che svolgono moltiplicazioni in parallelo e adder cascade  ( prodotto scalare )
-- DSP AxB_plusC che permette di moltiplicare il prodotto scalare precedentemente ottenuto
-- con il coefficiente  (1/kernel_scale)^2 e sommarci il Bias

-- il prodotto scalare avviene tra gli attributi della query ed il vettore ottenuto
-- tramite pre-computazione su MATLAB:
--   ( SV_i* Aplha_i* SV_Label_i ) -> matrice  poi  sum ( matrice  ) -> vettore   
 
-- che andrà poi passato ad una funzione sign
----------------------------------------------------------------------------------
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


LIBRARY xil_defaultlib;
USE xil_defaultlib.personal_type_pkg.ALL;

entity SVM is
  Port (
    Attribute_j_SVM        : in  portADSP_array_of_std_logic_vector; -- array di 34 elementi di tipo std_logic_vector ( query ) 
    SV_Alpha_Label_j_SVM   : in  portBDSP_array_of_std_logic_vector; -- elementi j-esimi del vettore pre-computato
    Kernel_Scale_inv_quadro_SVM: in  std_logic_vector( 17 downto 0 ); -- Kernel_Scale^-2
    Bias_SVM               : in  std_logic_vector( 47 downto 0 ); -- Bias da aggiungere alla fine 
    Output_SVM             : out std_logic_vector( 47 downto 0 );
    RST_SVM                : in  std_logic;
    CE_DSP_AxB_Cascade     : in  std_logic;
    CE_DSP_AxB_plus_C      : in  std_logic;
    CLK_SVM                : in  std_logic
   );
end SVM;

architecture arch of SVM is

component DSP_AxB_Cascade is
  port (
    Attribute_j : in  std_logic_vector( 29 downto 0 ); -- A
    SV_j        : in  std_logic_vector( 17 downto 0 ); -- B
    IN_Cascade  : in  std_logic_vector( 47 downto 0 ); -- PCIN Cascade
    OUT_Cascade : out std_logic_vector( 47 downto 0 ); -- PCOUT Cascade
    OUT_DSP     : out std_logic_vector( 47 downto 0 ); -- POUT non Cascade
    RST         : in  std_logic;
    CE          : in  std_logic;
    CLK         : in  std_logic
  );
end component;

component DSP_AxB_Cascade_wo_PCIN is
  port (
    Attribute_j : in  std_logic_vector( 29 downto 0 ); -- A
    SV_j        : in  std_logic_vector( 17 downto 0 ); -- B
    OUT_Cascade : out std_logic_vector( 47 downto 0 ); -- PCOUT Cascade
    OUT_DSP     : out std_logic_vector( 47 downto 0 ); -- POUT non cascade
    RST         : in  std_logic;
    CE          : in  std_logic;
    CLK         : in  std_logic
  );
end component;

component DSP_AxB_plus_C is
  port (
    Accumulated             : in  std_logic_vector( 29 downto 0 ); -- Risultato accumulato precedentemente
    Kernel_Scale_inv_quadro : in  std_logic_vector( 17 downto 0 ); -- Kernel_Scale^-2
    Bias                    : in  std_logic_vector( 47 downto 0 ); -- Bias 
    Output_SVM              : out std_logic_vector( 47 downto 0 ); -- Risultato finale SVM
    RST                     : in  std_logic;
    CE                      : in  std_logic;
    CLK                     : in  std_logic
  );
end component;

signal wire_IN_OUT_Cascade : portOut_array_of_std_logic_vector;

signal wire_Out_Cascade_In_DSP_AxB_plus_C : std_logic_vector(47 downto 0);

signal cut_wire_Out_Cascade_In_DSP_AxB_plus_C: std_logic_vector( 29 downto 0 );

type ext_portADSP is array ( 0 to num_attribute-1 ) of std_logic_vector( 29 downto 0 );
signal extend_Attr_j  : ext_portADSP;

signal i : integer;

begin

-- estensione di 0 per arrivare ai 29 formali del DSP, ultime 5 cifre usate solo senza multi 
-- ma vanno configurate 
ext_Attr:
For i in 0 to num_attribute - 1 generate 
    extend_Attr_j(i)  <=  b"00000"&Attribute_j_SVM(i)( 24 downto 0 );
end generate;



inst_DSP_AxB_wo_PCIN: 
DSP_AxB_Cascade_wo_PCIN port map (
    Attribute_j( 29 downto 0 ) => extend_Attr_j(0),
    SV_j( 17 downto 0 ) => SV_Alpha_Label_j_SVM(0)( 17 downto 0 ) ,
    OUT_Cascade => wire_IN_OUT_Cascade(0)(47 downto 0) ,
    RST => RST_SVM ,
    CE => CE_DSP_AxB_Cascade ,
    CLK => CLK_SVM  
);

inst_DSP_AxB_Cascade: 
   For j in 1 to num_attribute - 2 generate 
      DSP_AxB_Cascade_pm:  DSP_AxB_Cascade port map (
                              Attribute_j( 29 downto 0 ) => extend_Attr_j(j), -- 25 bit utilizzabili per il multiplier
                              SV_j( 17 downto 0 ) => SV_Alpha_Label_j_SVM(j)( 17 downto 0 ) ,
                              IN_Cascade =>  wire_IN_OUT_Cascade( j - 1 )( 47 downto 0 ) ,
                              OUT_Cascade => wire_IN_OUT_Cascade( j )( 47 downto 0 ) ,  
                              RST => RST_SVM ,
                              CE => CE_DSP_AxB_Cascade ,
                              CLK => CLK_SVM  );
   end generate;
inst_DSP_AxB_Cascade_34:  DSP_AxB_Cascade port map (
                        Attribute_j( 29 downto 0 ) => extend_Attr_j(33),
                        SV_j( 17 downto 0 ) => SV_Alpha_Label_j_SVM(33)( 17 downto 0 ) ,
                        IN_Cascade =>  wire_IN_OUT_Cascade( 32 )( 47 downto 0 ),
                        OUT_DSP => wire_Out_Cascade_In_DSP_AxB_plus_C, -- uscita a 48 bit ma i primi 26 di risultato che vanno tagliati a 25
                        --OUT_Cascade => wire_Out_Cascade_In_DSP_AxB_plus_C ,  
                        RST => RST_SVM ,
                        CE => CE_DSP_AxB_Cascade ,
                        CLK => CLK_SVM );

-- passo i primi 25 più significativi dei 26 di risultato
-- ed estendo i bit necessari alla porta A del DSP
cut_wire_Out_Cascade_In_DSP_AxB_plus_C <= b"00000"&wire_Out_Cascade_In_DSP_AxB_plus_C( 25 downto 1 ); 

inst_DSP_AxB_pluc_C: DSP_AxB_plus_C port map (
                        Accumulated  => cut_wire_Out_Cascade_In_DSP_AxB_plus_C,   -- passo i primi 25 più significativi dei 26 di risultato    
                        Kernel_Scale_inv_quadro => Kernel_Scale_inv_quadro_SVM,
                        Bias         => Bias_SVM,           
                        Output_SVM   => Output_SVM,           
                        RST          => RST_SVM,           
                        CE           => CE_DSP_AxB_plus_C,           
                        CLK          => CLK_SVM );         



end architecture;
