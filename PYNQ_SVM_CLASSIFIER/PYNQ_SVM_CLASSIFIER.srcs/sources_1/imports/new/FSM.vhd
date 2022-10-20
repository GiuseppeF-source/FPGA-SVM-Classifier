library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSM is  
Port (
    s_axis_aclk                    : in std_logic;
    start                          : in std_logic; -- 0 stop --  1 start
    classification                 : in std_logic; -- avvia il processamento se 1
    -- selettore RAM 
    BRAM_PS_to_PL                  : out std_logic; -- 0 scrive il PS -- 1 legge la PL
    -- RAM Pre computed Vector
    addr_RAM_Pre_Computed_Vector   : out std_logic_vector( 4-1 downto 0 );
    en_RAM_Pre_Computed_Vector     : out std_logic;
    -- RAM Kernel Scale
    addr_RAM_Kernel_Scale          : out std_logic_vector( 4-1 downto 0 );
    en_RAM_RAM_Kernel_Scale        : out std_logic;
    -- RAMs Bias
    addr_RAM_Bias                  : out std_logic_vector( 4-1 downto 0 );
    en_RAM_Bias                    : out std_logic;
    -- Controllo SIPO Buffer
    ce_sipo                        : out std_logic;
    rst_sipo                       : out std_logic;
    in_ready                       : in  std_logic; -- ready comunicato dal modulo SIPO
    out_valid_sipo                 : in  std_logic; -- valid da SIPO
    -- Controllo Classifier
    rst_svm_classifier             : out std_logic;
    rst_pipe_classfier             : out std_logic;
    ce_pipe_classifier             : out std_logic;
    ce_DSP_AxB_Cascade_classifier  : out std_logic;
    ce_DSP_AxB_plus_C_classifier   : out std_logic;  
    -- Controllo Voting_w_ce
    rst_voting                     : out std_logic;
    ce_voting                      : out std_logic;
    sign_valid                     : out std_logic; -- segnala corretta uscita classifier 
    win_class_valid                : in  std_logic;
    -- Gestione AXI-Stream Output
    m_axis_tready                  :  in std_logic; -- ready from DMA
    m_axis_valid                   : out std_logic; -- valid to DMA
    -- Gestione AXI-Stream Input
    s_axis_tready                  : out std_logic
);

end FSM;

architecture arch of FSM is

-----------------------
-- Signal FSM_SIPO_PCV
-----------------------
signal start_from_FSM_SIPO_PCV : std_logic; -- avvia FSM_Kernel_Bias
--------------------------
-- Signal FSM_Kernel_Bias
--------------------------
signal start_from_FSM_Kernel_Bias :std_logic; -- avvia FSM_Voting
--------------------------
-- Signal FSM_Voting 
--------------------------


--------------------------
-- Signal MAIN FSM      
--------------------------
type t_state is (IDLE, SETUP, PROCESSING, PAUSE);
signal state, next_state : t_state;

signal start_sub_fsm : std_logic;
signal sel_0_or_sipo : std_logic; -- 0 passa 0, 1 passa ready in uscita dal sipo
--------------------------

begin

pm_FSM_SIPO_PCV: entity work.FSM_SIPO_PCV(arch) port map (
    s_axis_aclk                  => s_axis_aclk ,
    m_axis_tready                => m_axis_tready ,
    start                        => start_sub_fsm ,
    start_fsm2                   => start_from_FSM_SIPO_PCV ,
    ce_sipo                      => ce_sipo   ,
    rst                          => rst_sipo   ,
    out_valid_sipo               => out_valid_sipo  ,
    addr_RAM_Pre_Computed_Vector => addr_RAM_Pre_Computed_Vector ,
    en_RAM_Pre_Computed_Vector   => en_RAM_Pre_Computed_Vector   
);

s_axis_tready <= in_ready when ( sel_0_or_sipo = '1') else '0';

pm_FSM_Kernel_Bias: entity work.FSM_Kernel_Bias(arch) port map ( 
start                          => start_sub_fsm,
s_axis_aclk                    => s_axis_aclk ,
m_axis_tready                  => m_axis_tready,
start_FSM2                     => start_from_FSM_SIPO_PCV,
addr_RAM_Kernel_Scale          => addr_RAM_Kernel_Scale,
en_RAM_RAM_Kernel_Scale        => en_RAM_RAM_Kernel_Scale,
addr_RAM_Bias                  => addr_RAM_Bias,
en_RAM_Bias                    => en_RAM_Bias,
ce_DSP_AxB_plus_C_classifier   => ce_DSP_AxB_plus_C_classifier,
start_FSM3                     => start_from_FSM_Kernel_Bias
);

pm_FSM_Voting: entity work.FSM_Voting(arch) port map ( 
start                          => start_sub_fsm ,              
s_axis_aclk                    => s_axis_aclk ,              
m_axis_tready                  => m_axis_tready ,              
start_FSM3                     => start_from_FSM_Kernel_Bias,              
ce_voting                      => ce_voting,              
reset_voting                   => rst_voting ,              
sign_valid                     => sign_valid,              
win_class_valid                => win_class_valid,              
valid_to_DMA                   => m_axis_valid             
);


SYNC_PROC : process (s_axis_aclk) 
begin
    if rising_edge(s_axis_aclk) then
        if start = '0' then
            state <= IDLE; 
        else
            state <= next_state;
        end if;
    end if;
end process;

OUTPUT_DECODE : process(state) 
begin
    case state is
        when IDLE =>
            start_sub_fsm                    <= '0'; -- altre FSM in IDLE
            --s_axis_tready                    <= '0'; -- non pronta a ricevere dal DMA
            sel_0_or_sipo                    <= '0';
            rst_svm_classifier               <= '1'; -- reset attivati
            rst_pipe_classfier               <= '1';
            ce_pipe_classifier               <= '0';
            ce_DSP_AxB_Cascade_classifier    <= '0';
            BRAM_PS_to_PL                    <= '0'; -- predisposto per scrivere il PS
            
        when SETUP =>
            start_sub_fsm                    <= '0';
            --s_axis_tready                    <= '0';
            sel_0_or_sipo                    <= '0';
            rst_svm_classifier               <= '0'; 
            rst_pipe_classfier               <= '0';
            ce_pipe_classifier               <= '0';
            ce_DSP_AxB_Cascade_classifier    <= '0';
            BRAM_PS_to_PL                    <= '0'; -- Connessione ram al Processore
            
         when PROCESSING =>
            start_sub_fsm                    <= '1';  
            --s_axis_tready                    <= in_ready;  -- uguale al ready del modulo SIPO
            sel_0_or_sipo                    <= '1';
            rst_svm_classifier               <= '0';  
            rst_pipe_classfier               <= '0';  
            ce_pipe_classifier               <= '1';  -- possono scorrere
            ce_DSP_AxB_Cascade_classifier    <= '1';  -- possono scorrere
            BRAM_PS_to_PL                    <= '1';  -- legge la PL
                           
        when PAUSE =>
            start_sub_fsm                    <= '1';  
            --s_axis_tready                    <= '0'; -- stallo, non devo riceve nulla 
            sel_0_or_sipo                    <= '0';
            rst_svm_classifier               <= '0';  
            rst_pipe_classfier               <= '0';  
            ce_pipe_classifier               <= '0'; -- blocco dello scorrimento
            ce_DSP_AxB_Cascade_classifier    <= '0'; -- blocco dello scorrimento
            BRAM_PS_to_PL                    <= '1'; -- connessione RAM alla PL                                     
    end case;
end process;

NEXT_STATE_DECODE : process (state, m_axis_tready, start , classification) 
begin
    next_state <= state;
    case state is
    
        when IDLE =>
            if start = '1' and classification = '0' then 
                next_state   <= SETUP;
            elsif start = '1' and classification = '1' then 
                next_state   <= PROCESSING;
            end if;  
            
        when SETUP =>
            if classification = '1' then
                next_state   <= PROCESSING;
            end if;
            
        when PROCESSING =>
            if m_axis_tready = '0' then
                next_state   <= PAUSE; 
            else
                next_state   <= PROCESSING;
            end if; 
 
        when PAUSE =>                                                  
             if m_axis_tready = '1' then
                next_state   <= PROCESSING; 
             else 
                next_state   <= PAUSE;
             end if;
    end case;
end process;

end arch;
