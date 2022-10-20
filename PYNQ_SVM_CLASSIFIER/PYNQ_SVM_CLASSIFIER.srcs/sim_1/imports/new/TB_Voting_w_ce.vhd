library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_Voting_w_ce is
--  Port ( );
end TB_Voting_w_ce;

architecture arch of TB_Voting_w_ce is

component Voting_w_ce is
  Port (
  clk             : in std_logic;
  rst             : in std_logic;
  ce              : in std_logic;
  
  sign_classifier : in std_logic;  -- 0 positivo 1 negativo
  sign_valid      : in std_logic;  -- input valido da Classifier
  
  win_class       : out std_logic_vector( 2 downto 0 ); -- 6 classi  
  win_class_valid : out std_logic                       -- output valido 
   );
end component;

constant period        : time := 20ns;
signal clk             :  std_logic := '1';
signal rst             :  std_logic := '1';
signal ce              :  std_logic := '0';

signal sign_classifier :  std_logic;  -- 0 positivo 1 negativo
signal sign_valid      :  std_logic := '0';  --indica input valido da Classifier

signal win_class       :  std_logic_vector( 2 downto 0 ); -- 6 classi  
signal win_class_valid :  std_logic;                        -- output valido 


begin

Vwce: Voting_w_ce Port Map (
    clk,rst,ce,sign_classifier,sign_valid,win_class,win_class_valid
);

clk <= not clk after period/2;

stimuli:
process
begin 
     wait for 5*period;
     ce <= '1';
     rst <= '0';
     wait until rising_edge(CLK);
     sign_valid <= '0'; -- dato input non ancora valido
     sign_classifier <= '1'; -- 
     wait until rising_edge(CLK);
     sign_valid <= '1'; -- valid alto da ora in poi permette di acquisire i dati
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
     sign_valid <= '0';     -- dati in ingresso non più validi 
     sign_classifier <= '1';  
     wait until rising_edge(CLK); 
     wait until rising_edge(CLK);  
     wait until rising_edge(CLK);   
     rst <= '1';
     wait until rising_edge(CLK);
     rst <= '0';
    sign_classifier <= '1'; -- 
          wait until rising_edge(CLK);
          sign_valid <= '1'; -- valid alto da ora in poi permette di acquisire i dati
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
          -- interruzzione ce
          ce <= '0';
          wait until rising_edge(CLK);
          wait until rising_edge(CLK);
          wait until rising_edge(CLK);
          ce <= '1';
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
            

     wait;
end process;



end arch;
