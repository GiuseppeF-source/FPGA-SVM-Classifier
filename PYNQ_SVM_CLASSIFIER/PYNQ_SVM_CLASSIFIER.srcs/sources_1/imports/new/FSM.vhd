-- vsg_off
-- vsg_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSM is  
Port (
    axi_resetn                     : in std_logic; -- reset Active Low
    s_axis_aclk                    : in std_logic;
    start                          : in std_logic; -- 0 stop --  1 start
    classification                 : in std_logic; -- avvia il processamento se 1
    -- Gestione RAM da PS 
    BRAM_PS_to_PL                  : out std_logic; -- 0 scrive il PS -- 1 legge la PL
    trig_axis_to_BRAM_PCV          : out std_logic; -- trigger = 1 permette caricamento da DMA a BRAM ( comanda uP )            
    trig_axis_to_BRAM_Kernel_Scale : out std_logic; -- trigger = 1 permette caricamento da DMA a BRAM ( comanda uP )        
    trig_axis_to_BRAM_Bias         : out std_logic; -- trigger = 1 permette caricamento da DMA a BRAM ( comanda uP )
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
type t_state is (
    RESET_STATE
    IDLE,
    SETUP, 
    PROCESSING, 
    PAUSE
);
signal state      : t_state;
signal next_state : t_state;

signal start_sub_fsm : std_logic;
signal sel_0_or_sipo : std_logic; -- 0 passa 0, 1 passa ready in uscita dal sipo
--------------------------

begin

pm_FSM_SIPO_PCV: entity work.FSM_SIPO_PCV(arch) port map (
    axi_resetn                   => axi_resetn, 
    s_axis_aclk                  => s_axis_aclk,
    m_axis_tready                => m_axis_tready,
    start                        => start_sub_fsm,
    start_fsm2                   => start_from_FSM_SIPO_PCV,
    ce_sipo                      => ce_sipo,
    rst                          => rst_sipo,
    out_valid_sipo               => out_valid_sipo,
    addr_RAM_Pre_Computed_Vector => addr_RAM_Pre_Computed_Vector,
    en_RAM_Pre_Computed_Vector   => en_RAM_Pre_Computed_Vector   
);

s_axis_tready <= in_ready when ( sel_0_or_sipo = '1') else '0';

pm_FSM_Kernel_Bias: entity work.FSM_Kernel_Bias(arch) port map (
axi_resetn                     => axi_resetn,  
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
axi_resetn                     => axi_resetn,
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


SYNC_PROC : process (s_axis_aclk, axi_resetn) 
begin
    if axi_resetn = '0' then 
        state <= RESET_STATE
    elsif rising_edge(s_axis_aclk) then
        state <= next_state;
    end if;
end process;

OUTPUT_DECODE : process(state) 
begin
    --------------------
    -- Default values --
    --------------------

    -- Gestione Caricamento Coefficienti in RAM
    trig_axis_to_BRAM_PCV            <= '0';
    trig_axis_to_BRAM_Kernel_Scale   <= '0';
    trig_axis_to_BRAM_Bias           <= '0';
    BRAM_PS_to_PL                    <= '0';    -- predisposto per connessione Ram al Processore

    -- Gestione RST del CLASSIFIER
    rst_svm_classifier               <= '0'; 
    rst_pipe_classfier               <= '0';

    -- Gestione CE del CLASSIFIER
    ce_pipe_classifier               <= '0';    -- scorrimento bloccato
    ce_DSP_AxB_Cascade_classifier    <= '0';    -- scorrimento bloccato

    -- Gestione AXIS_READY - interfaccia input
    sel_0_or_sipo                    <= '0';    -- default 0 = Accelleratore non disponbile a ricevere

    -- Gestione sub FSM
    start_sub_fsm                    <= '0';    -- default 0 = sub FSM in IDLE
    ----------------------------------------

    case state is
        when IDLE =>
            rst_svm_classifier               <= '1';  -- reset attivati
            rst_pipe_classfier               <= '1';
            
        when SETUP =>
            trig_axis_to_BRAM_PCV            <= '1';  -- trigger per FSM modulo caricamento coeff in RAM
            trig_axis_to_BRAM_Kernel_Scale   <= '1';
            trig_axis_to_BRAM_Bias           <= '1';
            
         when PROCESSING =>
            start_sub_fsm                    <= '1';  
            sel_0_or_sipo                    <= '1';  -- AXIS_READY generato dal SIPO
            ce_pipe_classifier               <= '1';  -- possono scorrere
            ce_DSP_AxB_Cascade_classifier    <= '1';  -- possono scorrere
            BRAM_PS_to_PL                    <= '1';  -- connessione RAM alla PL 
                           
        when PAUSE =>
            start_sub_fsm                    <= '1';  
            BRAM_PS_to_PL                    <= '1';  -- mantenuta connessione RAM alla PL   
        when others =>
            null;                                 
    end case;
end process;

NEXT_STATE_DECODE : process (state, m_axis_tready, start , classification) 
begin
    next_state <= state;
    case state is

        when RESET_STATE =>
            next_state <= IDLE;

        when IDLE =>
            if start = '1' and classification = '0' then 
                next_state   <= SETUP;
            elsif start = '1' and classification = '1' then 
                next_state   <= PROCESSING;
            else 
                next_state  <= IDLE;
            end if;  
            
        when SETUP =>
            if classification = '1' then
                next_state   <= PROCESSING;
            else
                next_state   <= SETUP;
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
