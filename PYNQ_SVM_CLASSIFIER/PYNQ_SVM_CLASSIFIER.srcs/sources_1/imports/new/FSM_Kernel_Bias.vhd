
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;

entity FSM_Kernel_Bias is
  Port ( 
      axi_resetn                     : in std_logic; -- reset Active Low
      start                          : in std_logic; -- proviene dal Main FSM
      s_axis_aclk                    : in  std_logic;
     -- per gestione stallo
      m_axis_tready                  : in std_logic; 
     -- avvio  from FSM_SIPO_PCV
      start_FSM2                     : in std_logic; -- proviene da FSM RAM SIPO_PCV
     -- avvio FSM Voting
      start_FSM3                     : out std_logic; -- da inviare alla FSM_Voting  
     -- gestione RAM 
      addr_RAM_Kernel_Scale          : out std_logic_vector( 4-1 downto 0 );
      en_RAM_RAM_Kernel_Scale        : out std_logic;
      addr_RAM_Bias                  : out std_logic_vector( 4-1 downto 0 );
      en_RAM_Bias                    : out std_logic;
      -- gestione DSP AxB+C
      ce_DSP_AxB_plus_C_classifier   : OUT std_logic
  );
end FSM_Kernel_Bias;

architecture arch of FSM_Kernel_Bias is

type t_state is ( 
    RESET_STATE,
    IDLE,
    PAUSE,
    FIRST_WAITING,
    WAITING,
    READ_RAM_Kernel_Bias 
);
signal  state       : t_state;
signal  next_state  : t_state;
signal  pause_state : t_state;

signal count: natural range 0 to 34 := 0; -- unico counter 


begin

SYNC_PROC : process (s_axis_aclk, axi_resetn) 
begin
    if axi_resetn = '0' then
        state <= RESET_STATE;
    elsif rising_edge(s_axis_aclk) then
        state <= next_state;
    end if;
end process;

TIMER : process(s_axis_aclk, axi_resetn, state)
begin
    if axi_resetn = '0' then
        count <= 0;
    elsif rising_edge(s_axis_aclk) then
       -- gestione counter lettura ram 
       --                  attesa iniziale 
       --                  attesa tra due inizi lettura 
       if state /= next_state then
            if  next_state = PAUSE   then  -- ogni cambio stato ( non valido per il PAUSE )
                count <= count + 1;
            elsif state = PAUSE then
                count <= count;
            else
                count <= 0;
            end if;
       elsif state /= IDLE and state /= PAUSE  then
            count <= count + 1;               
       elsif state = PAUSE then
            count <= count;
       else 
            count <= 0;
       end if;
    end if;
end process;

OUTPUT_DECODE : process(state,count) 
begin
-- default
en_RAM_RAM_Kernel_Scale      <= '0';
en_RAM_Bias                  <= '0'; 
ce_DSP_AxB_plus_C_classifier <= '0';
start_FSM3                   <= '0';
-----------
    case state is
        when IDLE =>
            null;
            
        when FIRST_WAITING => 
            null;
                      
        when WAITING => 
            ce_DSP_AxB_plus_C_classifier <= '1';
                                 
        when READ_RAM_Kernel_Bias =>
            ce_DSP_AxB_plus_C_classifier <= '1';
            start_FSM3                   <= '1';
            if count = 0 then 
                en_RAM_RAM_Kernel_Scale      <= '1';
                addr_RAM_Kernel_Scale        <=  conv_std_logic_vector(count, 4);        
            elsif  count < 15 then
                en_RAM_RAM_Kernel_Scale      <= '1';
                en_RAM_Bias                  <= '1'; 
                addr_RAM_Kernel_Scale        <=  conv_std_logic_vector(count, 4);
                addr_RAM_Bias                <=  conv_std_logic_vector(count - 1, 4);
            elsif count = 15 then
                en_RAM_Bias                  <= '1'; 
                addr_RAM_Bias                <=  conv_std_logic_vector(count - 1, 4);
            end if;
            
        when PAUSE =>
            start_FSM3                   <= '1';

        when others =>
            null;                                                  
    end case;
end process;
 
NEXT_STATE_DECODE : process (state, pause_state, m_axis_tready, start, start_FSM2, count) 
begin
    next_state <= state;
    case state is 
        when RESET_STATE => 
            next_state => IDLE;

        when IDLE =>
            if m_axis_tready = '0' then
                next_state <= PAUSE;
            elsif start_FSM2 = '1' then 
                next_state <= FIRST_WAITING;
            else 
                next_state <= IDLE;
            end if;  

        when FIRST_WAITING =>
            if m_axis_tready = '0' then
                next_state <= PAUSE;
            elsif count = 34 then       -- attesa causata dall'intero riempimento della pipe + 3 per dsp
                next_state <= READ_RAM_Kernel_Bias;
            else
                next_state <= FIRST_WAITING;
            end if;                    
                    
        when WAITING =>
            if m_axis_tready = '0' then
                next_state <= PAUSE;
            elsif count = 9 then         -- attesa tra un inizio lettura ed un altro ( in base alla prima FSM) 
                next_state <= READ_RAM_Kernel_Bias;
            else
                next_state <= WAITING;
            end if;
                           
        when READ_RAM_Kernel_Bias =>
           if m_axis_tready = '0' then
               next_state <= PAUSE;
           elsif count = 15  then
               next_state  <= WAITING;  
            else
                next_state <=  READ_RAM_Kernel_Bias;
           end if;        
                    
        when PAUSE => 
            if m_axis_tready = '1' then 
               next_state <= pause_state;
            end if;
    end case;
end process;

PAUSE_STATE_DECODE: process (s_axis_aclk, state, pause_state ) 
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
