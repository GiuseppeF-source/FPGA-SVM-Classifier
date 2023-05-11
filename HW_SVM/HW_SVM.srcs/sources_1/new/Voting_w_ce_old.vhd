-- modulo funzionante ma non scritto correttamente
--  inferenza di latch non voluti 
-- 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;

entity Voting_w_ce is
  Port (
  clk             : in std_logic;
  rst             : in std_logic;
  ce              : in std_logic;
  
  sign_classifier : in std_logic;  -- 0 positivo 1 negativo
  sign_valid      : in std_logic;  -- input valido da Classifier
  
  win_class       : out std_logic_vector( 2 downto 0 ) := (others => '0' ); -- 6 classi  
  win_class_valid : out std_logic                       -- output valido 
   );
end Voting_w_ce;

architecture arch of Voting_w_ce is

type t_ce_class is array ( 1 to 6 ) of std_logic;
signal ce_class: t_ce_class;

type t_out_counter is array ( 1 to 6 ) of std_logic_vector( 2 downto 0 );
signal out_class: t_out_counter := (others => (others => '0'));

signal count_clk    : natural range 1 to 16 := 1; -- tiene conto di quanti sign in input ci sono stati 16esimo per valutazione risultato.

function index_of_max ( test_vect : t_out_counter ) return std_logic_vector is
    variable index : natural := 0;
    variable foundmax : std_logic_vector( 2 downto 0 ) := ( others => '0');
    begin
        for i in 1 to test_vect'high loop
          if test_vect(i) > foundmax then
            index := i;
            foundmax := test_vect(i);
          end if;
        end loop;
        return conv_std_logic_vector(index, 3); -- uscita voting in std_logic_vector
end function;


Begin

counter:
For i in  1 to 6 generate 
    pm_counter_3b:
        entity work.counter_3b(arch) Port Map (
            clk   => clk, 
            ce    => ce_class(i), 
            rst   => rst,
            out_count => out_class(i) 
        );
end generate;

prc_count_clk:
process ( clk ) 
begin 
    if rising_edge( clk ) then
        if rst = '1' then
            count_clk <= 1 ;
        else
            if ce = '1' then
                if sign_valid = '1' then
                    count_clk <= count_clk + 1;
                else
                    if count_clk = 15 then
                       count_clk <= count_clk + 1;
                    else 
                        null; 
                    end if;
                end if;
            end if;
        end if;
    end if;
end process;

switch:
process ( sign_valid , count_clk ) 
begin 
    -- default
    ce_class(1) <= '0'; 
    ce_class(2) <= '1'; 
    ce_class(3) <= '0'; 
    ce_class(4) <= '0'; 
    ce_class(5) <= '0'; 
    ce_class(6) <= '0';
    win_class_valid <= '0';

    if sign_valid = '1' then 
    
        case count_clk is
            when  1 => 
                if sign_classifier = '1' then --  controllo SVM 1  nel primo ciclo
                    ce_class(2) <= '1'; 
                else
                    ce_class(1) <= '1'; 
              end if;
            when  2 =>
                if sign_classifier = '1' then --  controllo SVM 2
                    ce_class(3) <= '1'; 
                else
                    ce_class(1) <= '1';  
                end if;
            when  3 => 
                if sign_classifier = '1' then --  controllo SVM 3
                    ce_class(4) <= '1'; 
                else
                    ce_class(1) <= '1';  
                end if;        
            when  4 =>
                if sign_classifier = '1' then --  controllo SVM 4
                    ce_class(5) <= '1'; 
                else
                    ce_class(1) <= '1'; 
                end if;        
            when  5 => 
                if sign_classifier = '1' then --  controllo SVM 5
                    ce_class(6) <= '1'; 
                else
                    ce_class(1) <= '1'; 
                end if; 
            when  6 =>
                if sign_classifier = '1' then --  controllo SVM 6
                    ce_class(3) <= '1';  
                else
                    ce_class(2) <= '1'; 
                end if; 
            when  7 => 
                if sign_classifier = '1' then --  controllo SVM 7 
                    ce_class(4) <= '1'; 
                else 
                    ce_class(2) <= '1'; 
                end if; 
            when  8 =>
                if sign_classifier = '1' then --  controllo SVM 8
                    ce_class(5) <= '1';  
                else
                    ce_class(2) <= '1';
                end if;     
            when  9 => 
                if sign_classifier = '1' then --  controllo SVM 9
                    ce_class(6) <= '1'; 
                else
                    ce_class(2) <= '1'; 
                end if;         
            when 10 =>
                if sign_classifier = '1' then --  controllo SVM 10
                    ce_class(4) <= '1';  
                else
                    ce_class(3) <= '1';  
                end if;         
            when 11 => 
                if sign_classifier = '1' then --  controllo SVM 11
                    ce_class(5) <= '1'; 
                else
                    ce_class(3) <= '1';  
                end if;         
            when 12 =>
                if sign_classifier = '1' then --  controllo SVM 12
                    ce_class(6) <= '1'; 
                else
                    ce_class(3) <= '1';  
                end if;         
            when 13 => 
                if sign_classifier = '1' then --  controllo SVM 13 
                    ce_class(5) <= '1'; 
                else
                    ce_class(4) <= '1';  
                end if;         
            when 14 =>  
                if sign_classifier = '1' then --  controllo SVM 14 
                    ce_class(6) <= '1'; 
                else 
                    ce_class(4) <= '1'; 
                end if;          
            when 15 =>  
                if sign_classifier = '1' then --  controllo SVM 15 
                    ce_class(6) <= '1'; 
                else 
                    ce_class(5) <= '1'; 
                end if;                                                       
                    
            when others =>
                NULL;       
        end case;
    else
         if count_clk = 16 then
                win_class <= index_of_max(out_class);  -- trovo il max al ciclo successivo con counter fermi
                win_class_valid <= '1';
         end if;     
    end if;   
end process;


end arch;
