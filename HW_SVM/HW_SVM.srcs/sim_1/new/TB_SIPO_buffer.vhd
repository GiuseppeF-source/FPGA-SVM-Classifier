library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use std.env.finish;

entity TB_SIPO_buffer is
end TB_SIPO_buffer;

architecture arch of TB_SIPO_buffer is

component SIPO_buffer is

    Port ( 
        clk: in std_logic;
        ce_sipo: in std_logic;
        rst: in std_logic;
        
        -- AXI-Stream  input interface
        in_ready : out std_logic;
        in_valid : in std_logic;
        in_data : in std_logic_vector(32 - 1 downto 0);
     
        -- AXI-Stream output interface
        out_valid : out std_logic;
        out_data : out std_logic_vector( 271 downto 0)-- 8bit di attributo in 2's complement *34 
   );
end component;

-- TB constant 
constant input_width : natural := 32;
constant depth : natural:= 9;
constant clock_period : time := 20 ns;

-- UUT signal 
signal clk:  std_logic := '1' ;
signal ce_sipo:  std_logic := '0';
signal rst:  std_logic := '0';

    -- AXI-Stream  input interface
signal in_ready :  std_logic ;
signal in_valid :  std_logic := '0';
signal in_data :  std_logic_vector(32 - 1 downto 0) := (others => '0');

    -- AXI-Stream output interface
--out_ready : in std_logic; -- non indispensabile 
signal out_valid :  std_logic := '0';
signal out_data :  std_logic_vector( 271 downto 0);


begin

UUT: SIPO_buffer
port map (
    clk => clk ,
    ce_sipo => ce_sipo ,
    rst => rst ,
    
    -- AXI-Stream  input interface
    in_ready  => in_ready ,
    in_valid => in_valid ,
    in_data => in_data ,
    
    -- AXI-Stream output interface
    --out_ready <=
    out_valid => out_valid ,
    out_data => out_data
);

clk <= not clk after clock_period / 2;

var: process
begin
if in_valid = '1' and in_ready = '1' then
    in_data <= std_logic_vector(unsigned(in_data) + 1);
end if;
wait until rising_edge(clk);
end process;

signal_variation: process 
begin
    wait for 5 * clock_period; -- 100ns
    
    report "UUT attivo e DMA con dato valido";
    ce_sipo <= '1';  -- dispositivo non in sleep
    in_valid <= '1'; -- ricevo disponibilità a scrivere dal dma
    
    wait for clock_period;
    report "Classifier manda rst, inizio process. dati";
    -- riempimento buffer con impulso di rst
     wait until rising_edge(clk);
     rst <= '1';
     wait until rising_edge(clk);
     rst <= '0';
     wait for 3*clock_period;
     in_valid <= '0';  
     wait for 3*clock_period;
     in_valid <= '1';  
     wait until in_ready = '0';
  
    -- buffer full 
    report "Attesa con output sipo valido";
    wait for 5* clock_period;
    
    -- Il classifier ha processato il dato in parallelo 
    report "FSM manda rst, inizio process. dati";
    -- riempimento buffer con impulso di rst
    wait until rising_edge(clk);
     rst <= '1';
    wait until rising_edge(clk);
     rst <= '0';
    
    
    report "Test completed. Check waveform.";
    wait for 5* clock_period;
    wait;
    finish;
end process;


end arch;
