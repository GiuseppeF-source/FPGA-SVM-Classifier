library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_textio.all;
use STD.textio.all;

entity DMA_MM2S is
    Port ( 
        axis_nreset : in std_logic; 
        axis_aclk   : in std_logic;
        axis_tready : in std_logic;
        axis_tvalid : out std_logic;
        axis_tdata  : out std_logic_vector( 32 - 1 downto 0)
      );
end DMA_MM2S;

architecture rtl of DMA_MM2S is

------------------------------------------
-- Signals necessary for Reading from file
------------------------------------------
constant n_32b  : natural := 324;
type array_of_std is array (0 to n_32b - 1) of std_logic_vector(32 - 1 downto 0);
signal data_to_send                 : array_of_std;
------------------------------------------
-- Signals for send data
------------------------------------------
signal index  : natural;
signal axis_tready_i : std_logic;
signal axis_tvalid_i : std_logic;


begin
-------------------------------
-- Lettura Attributi da file
-------------------------------
read_file: process
    file text_file : text open read_mode is "C:\work\Master_Degree_Thesis\Gen_data_to_send\TB\Attribute_Test_ddr32.h";
    variable var_line : line;
    variable successful      : boolean;            -- variabile di conferma lettura
    variable bitvec          : std_logic_vector( 32 - 1 downto 0 ) := (others => '0');
    variable i : integer := 0;
begin
    while not endfile(text_file) loop
    
        readline(text_file, var_line); -- passaggio riga alla variabile var_line 
        
          -- Skip empty lines and single-line comments
        if var_line.all'length = 0 or var_line.all(1) = '#' then
         next;
        end if;
        
          -- Lettura 
        read(var_line, bitvec, successful); -- linea, variabile in cui viene messam, esito
  
        assert successful
          report "Read failed for line: " & var_line.all
          severity failure; -- check errori di lettura
  
        data_to_send(i) <= bitvec;
        i := i +1 ;
    end loop;
      file_close(text_file);
      wait;
end process;

-------------------------------
--     Processo di invio     --
-------------------------------
process (axis_aclk)
begin
  if rising_edge(axis_aclk) then
    if axis_nreset = '0' then
      axis_tvalid_i <= '0';
      axis_tdata  <= (others => 'Z');
      index <= 0;
    else
      axis_tvalid_i <= '1'; -- default 
      axis_tdata  <= data_to_send(index);

      if index < n_32b then  
          if ( axis_tready_i = '1' and axis_tvalid_i = '1' ) then           
              index <= index + 1;
          end if;       
      else
              axis_tvalid_i <= '0';
              index         <= index;
      end if;
    end if;
  end if;
end process;

-------------------------------
-- Assegnazione OUTPUT
-------------------------------
axis_tready_i <= axis_tready;
axis_tvalid <= axis_tvalid_i; 

end rtl;