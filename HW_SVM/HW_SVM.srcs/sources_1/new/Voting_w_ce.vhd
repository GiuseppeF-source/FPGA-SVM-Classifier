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
  
  win_class       : out std_logic_vector( 2 downto 0 ) ; -- 6 classi  
  win_class_valid : out std_logic                       -- output valido 
   );
end Voting_w_ce;

architecture arch of Voting_w_ce is

type t_ce_class is array ( 1 to 6 ) of std_logic;
signal ce_class: t_ce_class;

type t_out_counter is array ( 1 to 6 ) of std_logic_vector( 2 downto 0 );
signal out_class: t_out_counter;

signal count_clk    : natural range 0 to 16; -- tiene conto di quanti sign in input ci sono stati 16esimo per valutazione risultato.
signal sign_classifier_s : std_logic;

signal tick : std_logic; -- impulso da 1 ciclo, necessario per evitar di mantenere un CE per il voto alto a parit� di counter

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

mem_data_valid_p: process(clk,rst)
begin
    if rst = '1' then
        count_clk <= 0;
        sign_classifier_s <= '0';
        tick <= '0';
    elsif rising_edge(clk) then
        if ce = '1' then 
            if sign_valid = '1' then -- campiono solo se dato valido
                sign_classifier_s <= sign_classifier; 
                count_clk <= count_clk + 1;
            elsif count_clk = 15 then
                count_clk <= count_clk + 1;
            end if;
            
            -- sfrutto il valid in ingresso ritardato di un ciclo per generare un tick 
            -- cos� facendo non c'� la necessita di osservare se cambia o meno il contatore 
            -- perch� se sign_valid va basso sicuramente il contatore staziona
            -- ed i ce dei contatori per il voto non devono restare alti . 
            tick <= sign_valid;  
        end if;
    end if;
end process;



switch:
process ( all ) 
begin 
    -- default output
    ce_class(1) <= '0'; 
    ce_class(2) <= '0'; 
    ce_class(3) <= '0'; 
    ce_class(4) <= '0'; 
    ce_class(5) <= '0'; 
    ce_class(6) <= '0';
    --
    case count_clk is
        when  1 => 
            if sign_classifier_s = '1' then --  controllo SVM 1  
                ce_class(2) <= tick; 
            else
                ce_class(1) <= tick; 
          end if;
        when  2 =>
            if sign_classifier_s = '1' then --  controllo SVM 2
                ce_class(3) <= tick; 
            else
                ce_class(1) <= tick;  
            end if;
        when  3 => 
            if sign_classifier_s = '1' then --  controllo SVM 3
                ce_class(4) <= tick; 
            else
                ce_class(1) <= tick;  
            end if;        
        when  4 =>
            if sign_classifier_s = '1' then --  controllo SVM 4
                ce_class(5) <= tick; 
            else
                ce_class(1) <= tick; 
            end if;        
        when  5 => 
            if sign_classifier_s = '1' then --  controllo SVM 5
                ce_class(6) <= tick; 
            else
                ce_class(1) <= tick; 
            end if; 
        when  6 =>
            if sign_classifier_s = '1' then --  controllo SVM 6
                ce_class(3) <= tick;  
            else
                ce_class(2) <= tick; 
            end if; 
        when  7 => 
            if sign_classifier_s = '1' then --  controllo SVM 7 
                ce_class(4) <= tick; 
            else 
                ce_class(2) <= tick; 
            end if; 
        when  8 =>
            if sign_classifier_s = '1' then --  controllo SVM 8
                ce_class(5) <= tick;  
            else
                ce_class(2) <= tick;
            end if;     
        when  9 => 
            if sign_classifier_s = '1' then --  controllo SVM 9
                ce_class(6) <= tick; 
            else
                ce_class(2) <= tick; 
            end if;         
        when 10 =>
            if sign_classifier_s = '1' then --  controllo SVM 10
                ce_class(4) <= tick;  
            else
                ce_class(3) <= tick;  
            end if;         
        when 11 => 
            if sign_classifier_s = '1' then --  controllo SVM 11
                ce_class(5) <= tick; 
            else
                ce_class(3) <= tick;  
            end if;         
        when 12 =>
            if sign_classifier_s = '1' then --  controllo SVM 12
                ce_class(6) <= tick ;
            else
                ce_class(3) <= tick;  
            end if;         
        when 13 => 
            if sign_classifier_s = '1' then --  controllo SVM 13 
                ce_class(5) <= tick; 
            else
                ce_class(4) <= tick;  
            end if;         
        when 14 =>  
            if sign_classifier_s = '1' then --  controllo SVM 14 
                ce_class(6) <= tick; 
            else 
                ce_class(4) <= tick; 
            end if;          
        when 15 =>  
            if sign_classifier_s = '1' then --  controllo SVM 15 
                ce_class(6) <= tick; 
            else 
                ce_class(5) <= tick; 
            end if;                                                       
                
        when others =>
            NULL;       
    end case;

end process;


out_cld: process (clk , rst ) 
begin
    if rst = '1' then
        win_class       <= (others => '0');
        win_class_valid <= '0';  
    elsif rising_edge(clk) then 
       if ce = '1' then        
            if count_clk = 16 then
               win_class <= index_of_max(out_class);  -- trovo il max al ciclo successivo con counter fermi
               win_class_valid <= '1';
            end if;
       end if;
    end if; 
end process;


end arch;
