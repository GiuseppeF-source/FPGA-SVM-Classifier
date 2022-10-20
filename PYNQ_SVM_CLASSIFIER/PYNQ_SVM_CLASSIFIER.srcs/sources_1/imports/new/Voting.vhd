library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_arith.all;

entity Voting is
  port (
    CLK             : in std_logic;
    ce_voting       : in std_logic;
    rst             : in std_logic;  -- da mandare ad ogni nuovo voting 
    sign_classifier : in std_logic;  -- 0 positivo 1 negativo
    in_valid        : in std_logic;  -- valida sign in ingresso 
    out_valid       : out std_logic; -- valida classe in uscita
    out_class       : out std_logic_vector(2 downto 0) -- 3 bit per rapprsentare 6 classi
  );
end Voting;

architecture arch of Voting is

  
signal reg_sign, reg_valid : std_logic;

type class is array (1 to 6) of natural;
signal vote_class : class := (others => 0);

signal count : natural range 1 to 15 := 1; -- lunghezza pari alle SVM + reg iniziale

function index_of_max(test_vect : class) return std_logic_vector is
    variable index : natural := 0;
    variable foundmax : natural := 0;
    begin
        for i in 1 to test_vect'high loop
          if test_vect(i) > foundmax then
            index := i;
            foundmax := test_vect(i);
          end if;
        end loop;
        return conv_std_logic_vector(index, 3); -- uscita voting in std_logic_vector
end function;

begin

shift_proc :
  process (CLK)
  begin
    if rising_edge(CLK) then
    
      if rst = '1' then
        reg_sign  <= '0';
        reg_valid <= '0';
        
        for i in 1 to 6 loop
            vote_class(i) <= 0;
        end loop ; 
        
      else
        if ce_voting = '1' then 
          reg_valid <= in_valid;         -- registro per il valid
          
          if in_valid = '1' then
          
           -----------------------
           -- Registro di ingresso
           -----------------------
            reg_sign <= sign_classifier;   -- registro per il sign dal classifier
            
           ---------------------------------
           -- Votazione classi ad ogni ciclo
           ---------------------------------            
            if  reg_valid = '1'  then  -- count = 1 in poi posso fare il controllo ( passato il primo reg ) 
                  
                  -- controllo bit per bit per dare voto classe
                  -- ad ogni ciclo cambia l'IF per cambiare il controllo dell'SVM
                  if count = 1 then
                    if reg_sign = '1' then --  controllo SVM 1  nel primo ciclo 
                      vote_class(2) <= vote_class(2) + 1;
                    else
                      vote_class(1) <= vote_class(1) + 1;
                    end if;
                  end if;
          
                  if count = 2 then
                    if reg_sign = '1' then -- SVM 2 
                      vote_class(3) <= vote_class(3) + 1;
                    else
                      vote_class(1) <= vote_class(1) + 1;
                    end if;
                  end if;
          
                  if count = 3 then
                    if reg_sign = '1' then -- SVM 3 
                      vote_class(4) <= vote_class(4) + 1;
                    else
                      vote_class(1) <= vote_class(1) + 1;
                    end if;
                  end if;
          
                  if count = 4 then
                    if reg_sign = '1' then -- SVM 4 
                      vote_class(5) <= vote_class(5) + 1;
                    else
                      vote_class(1) <= vote_class(1) + 1;
                    end if;
                  end if;
          
                  if count = 5 then
                    if reg_sign = '1' then -- SVM 5
                      vote_class(6) <= vote_class(6) + 1;
                    else
                      vote_class(1) <= vote_class(1) + 1;
                    end if;
                  end if;
          
                  if count = 6 then
                    if reg_sign = '1' then -- SVM 6 
                      vote_class(3) <= vote_class(3) + 1;
                    else
                      vote_class(2) <= vote_class(2) + 1;
                    end if;
                  end if;
          
                  if count = 7 then
                    if reg_sign = '1' then -- SVM 7 
                      vote_class(4) <= vote_class(4) + 1;
                    else
                      vote_class(2) <= vote_class(2) + 1;
                    end if;
                  end if;
          
                  if count = 8 then
                    if reg_sign = '1' then -- SVM 8 
                      vote_class(5) <= vote_class(5) + 1;
                    else
                      vote_class(2) <= vote_class(2) + 1;
                    end if;
                  end if;
          
                  if count = 9 then
                    if reg_sign = '1' then -- SVM 9 
                      vote_class(6) <= vote_class(6) + 1;
                    else
                      vote_class(2) <= vote_class(2) + 1;
                    end if;
                  end if;
          
                  if count = 10 then
                    if reg_sign = '1' then -- SVM 10 
                      vote_class(4) <= vote_class(4) + 1;
                    else
                      vote_class(3) <= vote_class(3) + 1;
                    end if;
                  end if;
          
                  if count = 11 then
                    if reg_sign = '1' then -- SVM 11 
                      vote_class(5) <= vote_class(5) + 1;
                    else
                      vote_class(3) <= vote_class(3) + 1;
                    end if;
                  end if;
          
                  if count = 12 then
                    if reg_sign = '1' then -- SVM 12
                      vote_class(6) <= vote_class(6) + 1;
                    else
                      vote_class(3) <= vote_class(3) + 1;
                    end if;
                  end if;
          
                  if count = 13 then
                    if reg_sign = '1' then -- SVM 13
                      vote_class(5) <= vote_class(5) + 1;
                    else
                      vote_class(4) <= vote_class(4) + 1;
                    end if;
                  end if;
          
                  if count = 14 then
                    if reg_sign = '1' then -- SVM 14
                      vote_class(6) <= vote_class(6) + 1;
                    else
                      vote_class(4) <= vote_class(4) + 1;
                    end if;
                  end if;
          
                  if count = 15 then
                    if reg_sign = '1' then -- SVM 15
                      vote_class(6) <= vote_class(6) + 1;
                    else
                      vote_class(5) <= vote_class(5) + 1;
                    end if;
                  end if;
          
                end if;            
           ---------------------------------
           -- Fine votazione classi ad ogni ciclo
           ---------------------------------           

          else
            null;
          end if;
        end if;
      end if;
    end if;
 end process;
 
 process ( CLK )
 begin 
    if rising_edge(CLK) then
        if rst = '1' then
            count <= 1;
            out_valid <= '0';
        else
        ---------------------
        -- Gestione Count 
        --------------------- 
            if ce_voting = '1' then 
                if reg_valid = '1' then
                     if ( count = 15 ) then
                       out_valid <= '1';
                     else
                       count <= count + 1;
                       out_valid <= '0';
                     end if;
                 end if;
             end if;
            end if;
        end if;        
 end process;
 

process( count )
begin
    if count = 15 then
    out_class <= index_of_max(vote_class); -- avvio scelta indice con valore max
    end if;
end process;
end arch;