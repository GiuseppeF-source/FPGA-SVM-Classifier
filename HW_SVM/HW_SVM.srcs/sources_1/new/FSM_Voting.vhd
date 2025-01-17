library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;

entity FSM_Voting is
  Port ( 
      axi_resetn                      : in std_logic; -- reset Active Low
      s_axis_aclk                     : in  std_logic;
     -- per gestione stallo
      m_axis_tready                   : in std_logic; 
     -- avvio  from FSM_Kernel_Bias
      start_FSM3                      : in std_logic; -- proviene da FSM Kernel Bias
     -- gestione Voting_w_ce
      ce_voting                       : out std_logic;
      reset_voting                    : out std_logic; 
      sign_valid                      : out std_logic;
      win_class_valid                 : in  std_logic;
      valid_to_DMA                    : out std_logic

  );
end FSM_Voting;

architecture arch of FSM_Voting is

type t_state is ( 
    RESET_STATE,
    IDLE,
    PAUSE,
    FIRST_WAITING,
    WAITING, 
    RST_VOTING, 
    VOTING , 
    RESULT
);
signal  state       : t_state;
 signal next_state  : t_state;   
 signal pause_state : t_state;

signal count: natural range 0 to 16 := 0; -- unico counter 


begin

SYNC_PROC : process (s_axis_aclk, axi_resetn) 
begin
    if axi_resetn = '0' then
        state <= RESET_STATE;
    elsif rising_edge(s_axis_aclk) then
        state <= next_state; 
    end if;
end process;

TIMER : process(s_axis_aclk, axi_resetn)
begin
    if axi_resetn = '0' then
        count <= 0;

    elsif rising_edge(s_axis_aclk) then
       -- gestione counter 
       --                  attesa iniziale 
       --                  attesa tra due inizi voting

       if state /= next_state then
            if  next_state = PAUSE   then  -- ogni cambio stato ( non valido per il PAUSE )
                count <= count + 1;
            elsif state = PAUSE then
                count <= count;
            else
                count <= 0;
            end if;
       elsif state = FIRST_WAITING or state = WAITING or state = VOTING then
                count <= count + 1;
       elsif state = PAUSE then
                count <= count;
       else 
            count <= 0;
        end if;
    end if;
end process;

OUTPUT_DECODE : process(all) 
begin
-- default
valid_to_DMA    <= '0';
ce_voting       <= '0';
reset_voting    <= '0'; 
sign_valid      <= '0';
----------
    case state is
        when IDLE =>
            null;
        
        when FIRST_WAITING => 
            null;
                      
        when WAITING => 
            null;
            
        when RST_VOTING => 
            ce_voting       <= '1';
            reset_voting    <= '1'; 
                                          
        when VOTING =>
            ce_voting       <= '1';
            if count < 15 then
                sign_valid      <= '1';    -- sign dal classifier validi        
            end if;
            
        when RESULT =>
            valid_to_DMA    <= '1';
            ce_voting       <= '1';
            
        when PAUSE => 
            null;
        when others => 
            null;
                                                   
    end case;
end process;
 
NEXT_STATE_DECODE : process (all) 
begin
    next_state <= state;
    case state is
        when RESET_STATE => 
            next_state <= IDLE;
    
        when IDLE =>
            if start_FSM3 = '1' then 
                next_state <= FIRST_WAITING;
            end if;  

        when FIRST_WAITING =>
            if m_axis_tready = '0' then
                next_state  <= PAUSE;      -- stallo, in pause se DMA non ? pronto
            elsif count = 1 then -- attesa causata dai ( 0 to 2) 3 cicli dell'ultimo DSP AxB+C , - quello di reset
                next_state <= RST_VOTING;
            end if;                    
                    
        when WAITING =>
            if m_axis_tready = '0' then
                next_state  <= PAUSE;      -- stallo, in pause se DMA non ? pronto
            elsif count = 5 then         -- 10 cicli meno reset, attesa tra un inizio lettura Ram PCV ed un altro ( in base alla prima FSM) 
                next_state <= RST_VOTING;
            end if;

        when RST_VOTING =>
            if m_axis_tready = '0' then
                next_state  <= PAUSE;      -- stallo, in pause se DMA non ? pronto
            else 
                next_state <= VOTING;
            end if;            
                           
        when VOTING =>
            if m_axis_tready = '0' then
                next_state  <= PAUSE;      -- stallo in pause se DMA non ? pronto
            elsif win_class_valid = '1'  then
                next_state  <= RESULT;  
            end if;        

        when RESULT =>
            if m_axis_tready = '0' then
                next_state  <= PAUSE;      -- stallo in pause se DMA non ? pronto
            elsif m_axis_tready = '1'  then
                next_state  <= WAITING;   
            end if;        
                  
        when PAUSE =>                                                  
            if m_axis_tready = '1' then 
                next_state <= pause_state;
            end if;
    end case;
end process;

PAUSE_STATE_DECODE: process (s_axis_aclk) 
begin 
if rising_edge(s_axis_aclk) then
    case state is 
        when PAUSE => 
            pause_state <= pause_state;
        when others => 
            pause_state <= state;
    end case;
end if;                        
end process;

end arch;
