library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_Tester is
  Port ( 
-- CLASSIFIER_w_VOTING
   -- GPIO INPUT interface 
   start            : out  std_logic;
   classification   : out  std_logic;
   
   -- AXI-Stream  INPUT interface
   m00_axis_aclk      : out  std_logic;
   m00_axis_tready    : in   std_logic;                            
   m00_axis_tvalid    : out  std_logic;                          
   m00_axis_tdata     : out  std_logic_vector( 32 - 1 downto 0 ); 
   
   -- AXI-Stream OUTPUT interface
   s00_axis_tdata     : in   std_logic_vector( 32 - 1 downto 0 );
   s00_axis_tvalid    : in   std_logic;
   s00_axis_tready    : out  std_logic;
 
-- axis_to_BRAM
   -- AXI-Stream OUTPUT interface PCV
   m01_axis_tready    : in   std_logic;                          
   m01_axis_tvalid    : out  std_logic;                         
   m01_axis_tdata     : out  std_logic_vector( 32 - 1 downto 0 );
   
   -- AXI-Stream OUTPUT interface Kernel Scale
   m02_axis_tready    : in   std_logic;                          
   m02_axis_tvalid    : out  std_logic;                         
   m02_axis_tdata     : out  std_logic_vector( 32 - 1 downto 0 );

   -- AXI-Stream OUTPUT interface Bias
   m03_axis_tready    : in   std_logic;                          
   m03_axis_tvalid    : out  std_logic;                         
   m03_axis_tdata     : out  std_logic_vector( 32 - 1 downto 0 )
  -- 
  );
end TB_Tester;

architecture rtl of TB_Tester is

  constant clock_period : time := 20s;

  signal clock          : std_logic := '0';
  signal nreset         : std_logic := '1';

begin
------------------------------------------
--                 ISTANCES             --
------------------------------------------ 
  DMA_MM2S_inst : entity work.DMA_MM2S
  port map (
    axis_nreset => axis_nreset,
    axis_aclk => clock,
    axis_tready => m00_axis_tready,
    axis_tvalid => m00_axis_tvalid,
    axis_tdata => m00_axis_tdata
  );

-------------------------------------------
--                  CLOCK                --
-------------------------------------------
  clock <= not clock after clock_period/2;
  m00_axis_aclk <= clock;



end rtl;

