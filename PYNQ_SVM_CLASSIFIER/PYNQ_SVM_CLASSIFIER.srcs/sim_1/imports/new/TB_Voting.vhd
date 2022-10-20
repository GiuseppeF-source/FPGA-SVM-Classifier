
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

LIBRARY xil_defaultlib;

entity TB_Voting is
end TB_Voting;

architecture arch of TB_Voting is

constant clock_period :      time     := 20ns;
signal CLK :                 std_logic:= '1';
signal ce_voting :           std_logic:= '0';
signal rst:                  std_logic:= '1';
signal sign_classifier :     std_logic; -- 0 positivo 1 negativo
signal out_class :           std_logic_vector( 2 downto 0 ); -- 3 bit per rapprsentare 6 classi
signal in_valid        :     std_logic := '0';
signal out_valid       :     std_logic;

begin

VUT: entity xil_defaultlib.Voting(arch)
port map (
    CLK             => CLK,
    ce_voting       => ce_voting,
    rst             => rst,
    sign_classifier => sign_classifier,
    in_valid        => in_valid,
    out_valid       => out_valid,
    out_class       => out_class
);

-------------------------------------------
-- Inizio variazione segnali
-------------------------------------------
CLK <= not CLK after clock_period / 2;

p_stim: process
begin 
   wait for 5*clock_period;
   ce_voting <= '1'; -- abilita modulo
   rst <= '0'; 
   -- simulazione risultati classifier in coda
   wait until rising_edge(CLK);
   in_valid <= '0'; -- dato input non ancora valido
   sign_classifier <= '1'; -- 
   wait until rising_edge(CLK);
   in_valid <= '1'; -- valid alto da ora in poi permette di acquisire i dati
   sign_classifier <= '1'; 
   wait until rising_edge(CLK);
   sign_classifier <= '1';
   wait until rising_edge(CLK);
   sign_classifier <= '1';
   wait until rising_edge(CLK);  
   sign_classifier <= '1';
   wait until rising_edge(CLK);
   sign_classifier <= '0';
   wait until rising_edge(CLK);  
   sign_classifier <= '1';
   wait until rising_edge(CLK);
   sign_classifier <= '0';
   wait until rising_edge(CLK);  
   sign_classifier <= '0';
   wait until rising_edge(CLK);
   sign_classifier <= '0';
   wait until rising_edge(CLK); 
   sign_classifier <= '0';
   wait until rising_edge(CLK); 
   sign_classifier <= '0';
   wait until rising_edge(CLK); 
   sign_classifier <= '0';
   wait until rising_edge(CLK); 
   sign_classifier <= '0';
   wait until rising_edge(CLK); 
   sign_classifier <= '0';
   wait until rising_edge(CLK); 
   sign_classifier <= '0';
   wait until rising_edge(CLK); 
   -- sequenza finita  
   in_valid <= '0';     -- dati in ingresso non più validi 
   sign_classifier <= '1';  
   wait until rising_edge(CLK); 
   wait until rising_edge(CLK);  
   wait until rising_edge(CLK);   
   rst <= '1';  
 ------------------------------------------------------------------------  
 -- NUOVA SEQUENZA 
 ---------------------------------------------------------------------- 
   wait until rising_edge(CLK);
   rst <= '0'; 
   -- simulazione risultati classifier in coda
   wait until rising_edge(CLK);
   in_valid <= '0'; -- dato input non ancora valido
   sign_classifier <= '1'; -- 
   wait until rising_edge(CLK);
   in_valid <= '1'; -- valid alto da ora in poi permette di acquisire i dati
   sign_classifier <= '0'; 
   wait until rising_edge(CLK);
   sign_classifier <= '0';
   wait until rising_edge(CLK);
   sign_classifier <= '0';
   wait until rising_edge(CLK);  
   sign_classifier <= '0';
   wait until rising_edge(CLK);
   sign_classifier <= '0';
   wait until rising_edge(CLK);  
   sign_classifier <= '0';
   wait until rising_edge(CLK);
   sign_classifier <= '0';
   wait until rising_edge(CLK);  
   sign_classifier <= '1';
   wait until rising_edge(CLK);
   sign_classifier <= '0';
   wait until rising_edge(CLK); 
   sign_classifier <= '1';
   wait until rising_edge(CLK); 
   sign_classifier <= '1';
   wait until rising_edge(CLK); 
   sign_classifier <= '1';
   wait until rising_edge(CLK); 
   sign_classifier <= '1';
   wait until rising_edge(CLK); 
   sign_classifier <= '0';
   wait until rising_edge(CLK); 
   sign_classifier <= '0';
   wait until rising_edge(CLK); 
   -- sequenza finita  
   in_valid <= '0';     -- dati in ingresso non più validi 
   sign_classifier <= '1';  
   wait until rising_edge(CLK); 
   wait until rising_edge(CLK);  
   wait until rising_edge(CLK);   
   rst <= '1';              
   wait;
end process;

end arch;
