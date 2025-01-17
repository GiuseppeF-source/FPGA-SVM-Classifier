library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
LIBRARY xil_defaultlib;
use xil_defaultlib.Constant_PKG.all;

entity TB_Tester is
  Port ( 
-- CLASSIFIER_w_VOTING
   -- GPIO INPUT interface 
   start            : out  std_logic;
   classification   : out  std_logic;
   
   -- AXI-Stream  INPUT interface
   axi_resetn         : out  std_logic ;
   m00_axis_aclk      : out  std_logic ;

   m00_axis_tready    : in   std_logic;                            
   m00_axis_tvalid    : out  std_logic;                          
   m00_axis_tdata     : out  std_logic_vector( AXIS_DATA_WIDTH - 1 downto 0 ); 
   m00_axis_tlast     : out std_logic; 
   
   -- AXI-Stream OUTPUT interface
   s00_axis_tdata     : in   std_logic_vector( AXIS_DATA_WIDTH - 1 downto 0 );
   s00_axis_tvalid    : in   std_logic;
   s00_axis_tready    : out  std_logic;
   s00_axis_tlast     : in std_logic; 
 
-- axis_to_BRAM
   -- AXI-Stream OUTPUT interface PCV
   m01_axis_tready    : in   std_logic;                          
   m01_axis_tvalid    : out  std_logic;                         
   m01_axis_tdata     : out  std_logic_vector( AXIS_DATA_WIDTH - 1 downto 0 );
   
   -- AXI-Stream OUTPUT interface Kernel Scale
   m02_axis_tready    : in   std_logic;                          
   m02_axis_tvalid    : out  std_logic;                         
   m02_axis_tdata     : out  std_logic_vector( AXIS_DATA_WIDTH - 1 downto 0 );

   -- AXI-Stream OUTPUT interface Bias
   m03_axis_tready    : in   std_logic;                          
   m03_axis_tvalid    : out  std_logic;                         
   m03_axis_tdata     : out  std_logic_vector( AXIS_DATA_WIDTH - 1 downto 0 )
  -- 
  );
end TB_Tester;

architecture rtl of TB_Tester is

    -- Clock period and cnt cycle
    signal   clk_cnt    : natural;
    --------------------
    --  CPU Signals   --
    --------------------
    signal cpu_clock  : std_logic;
    signal cpu_nreset : std_logic;

    
begin
 
------------------------------------------
--                 ISTANCES             --
------------------------------------------ 
  DMA_MM2S_inst : entity work.DMA_MM2S
  port map (
    axis_nreset => cpu_nreset,
    axis_aclk   => cpu_clock,
    axis_tready => m00_axis_tready,
    axis_tvalid => m00_axis_tvalid,
    axis_tdata  => m00_axis_tdata,
    axis_tlast  => m00_axis_tlast
  );
  DMA_MM2S_PCV_inst : entity work.DMA_MM2S_PCV
  port map (
    axis_nreset => cpu_nreset,
    axis_aclk   => cpu_clock,
    axis_tready => m01_axis_tready,
    axis_tvalid => m01_axis_tvalid,
    axis_tdata  => m01_axis_tdata
  );
  DMA_MM2S_KERNEL_inst : entity work.DMA_MM2S_KERNEL
  port map (
    axis_nreset => cpu_nreset,
    axis_aclk   => cpu_clock,
    axis_tready => m02_axis_tready,
    axis_tvalid => m02_axis_tvalid,
    axis_tdata  => m02_axis_tdata
  );
  DMA_MM2S_BIAS_inst : entity work.DMA_MM2S_BIAS
  port map (
    axis_nreset => cpu_nreset,
    axis_aclk   => cpu_clock,
    axis_tready => m03_axis_tready,
    axis_tvalid => m03_axis_tvalid,
    axis_tdata  => m03_axis_tdata
  );

------------------------------------------------
----------------- CLOCK PROCESS  ---------------
------------------------------------------------
  clk_process : process
  begin
  cpu_clock <= '1';
  wait for CLK_PERIOD/2;
  cpu_clock <= '0';
  wait for CLK_PERIOD/2;
  end process ;

  m00_axis_aclk <= cpu_clock;
------------------------------------------------
--------------------- RESET  -------------------
------------------------------------------------
  -- reset = 1 for first clock cycle and then 0
  cpu_nreset <= '0', '1' after 5*CLK_PERIOD;
  axi_resetn <= cpu_nreset;
------------------------------------------------
---------------- COUNTER CYCLES ----------------
------------------------------------------------
  clk_cnt_p: process(cpu_clock)
  begin
    if rising_edge(cpu_clock)  then
      if cpu_nreset = '0' then
        clk_cnt <= 0;
      else
        clk_cnt <= clk_cnt + 1;
      end if;
    end if;
  end process;
------------------------------------------------
--------------- SIMULATION GPIO ----------------
------------------------------------------------
GPIO_p: process(cpu_clock)
begin
  if rising_edge(cpu_clock) then
    if cpu_nreset = '0' then
      -- IDLE
      start            <= '0';   
      classification   <= '0'; 
    else
      if clk_cnt >= 2 and clk_cnt <= 300 then
        -- SETUP
        start          <= '1';   
        classification <= '0'; 
      elsif clk_cnt > 300 then
        -- CLASSIFICATION
        start          <= '1';   
        classification <= '1'; 
      else
        start          <= '0';   
        classification <= '0'; 
      end if;
    end if;
  end if;
end process ;
 -----------------------------------------------
------------- SIMULATION DMA S2MM --------------
------------------------------------------------   
  
S2MM_p: process (cpu_clock)
begin 
	if rising_edge(cpu_clock) then
		if clk_cnt > 0 and clk_cnt <= 300 then
			-- SETUP
			s00_axis_tready <= '0';
		elsif clk_cnt > 300 and clk_cnt <= 980 then
			-- CLASSIFICATION
			s00_axis_tready <= '1';
		elsif clk_cnt > 980 and clk_cnt <= 2000 then
			-- CLASSIFICATION
			s00_axis_tready <= '1';
		else
			s00_axis_tready <= '0';
		end if;
	end if;
end process;
--s00_axis_tready <= '1';

end rtl;

