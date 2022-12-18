library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;

entity FSM_SIPO_PCV is
  Port (
    axi_resetn                     : in std_logic; -- reset Active Low
    s_axis_aclk                    : in  std_logic;    
  -- per gestione stallo
    m_axis_tready                  : in  std_logic; 
  -- partenza ed avvio altra sub fsm
    start                          : in  std_logic;
    start_fsm2                     : out std_logic; 
  -- gestione SIPO
    ce_sipo                        : out std_logic;
    rst                            : out std_logic;
    out_valid_sipo                 : in  std_logic; -- valid da SIPO
  -- gestione RAM 
    addr_RAM_Pre_Computed_Vector   : out std_logic_vector( 4-1 downto 0 );
    en_RAM_Pre_Computed_Vector     : out std_logic
  );
end FSM_SIPO_PCV;

architecture arch of FSM_SIPO_PCV is

type t_state is ( 
    RESET_STATE,
    IDLE, 
    PAUSE, 
    RST_SIPO, 
    LOAD_SIPO, 
    READ_RAM_PCV 
);
signal  state       : t_state;
signal  next_state  : t_state;
signal  pause_state : t_state;

signal count : natural range 0 to 14 := 0;  -- fino a 15 perch� se in pausa pu� incrementare

begin

SYNC_PROC : process (s_axis_aclk, axi_resetn) 
begin
    if axi_resetn = '0' then
        state <= RESET_STATE;
    elsif rising_edge(s_axis_aclk) then
        state <= next_state;
    end if;
end process;

TIMER : process(s_axis_aclk, axi_resetn,state)
begin
    if axi_resetn = '0' then
        count <= 0;
    elsif rising_edge(s_axis_aclk) then
       if state /= next_state then
         if  next_state = PAUSE   then  -- ogni cambio stato ( non valido per il PAUSE )
             count <= count + 1;
         elsif state = PAUSE then
             count <= count;
         else
             count <= 0;
         end if;
    elsif state = READ_RAM_PCV then
             count <= count + 1;
    elsif state = PAUSE then
             count <= count;
    else 
         count <= 0;
     end if;
 end if;
end process;

OUTPUT_DECODE : process(state, count) 
begin
-- default
en_RAM_Pre_Computed_Vector    <= '0';
ce_sipo                       <= '0';
rst                           <= '0';
start_fsm2                    <= '0'; 
----------
    case state is
        when IDLE =>
            null;  
            
        when RST_SIPO =>
            ce_sipo     <= '1';
            rst         <= '1';
                        
        when LOAD_SIPO =>
            ce_sipo     <= '1';
            
        when READ_RAM_PCV =>
            en_RAM_Pre_Computed_Vector   <= '1';
            addr_RAM_Pre_Computed_Vector <= conv_std_logic_vector(count, 4);
            start_fsm2     <= '1';  -- avvio la FSM2
            
        when PAUSE =>  
            null;  

        when others =>
            null;                                                 
    end case;
end process;
 
NEXT_STATE_DECODE : process (state,pause_state, m_axis_tready, start, out_valid_sipo, count) 
begin
    next_state <= state;
    case state is
        when RESET_STATE => 
            next_state <= IDLE;
    
        when IDLE =>
            if start = '1' then 
                next_state <= RST_SIPO;
            else 
                next_state <= IDLE;
            end if; 
            
        when RST_SIPO =>
             if m_axis_tready = '0' then
                next_state <= PAUSE;      -- stallo in pause se DMA non � pronto
             else
                next_state <= LOAD_SIPO;
             end if;
             
        when LOAD_SIPO =>
        -- stallo in pause se DMA non � pronto
             if m_axis_tready = '0' then
                next_state  <= PAUSE; 
        -- dato pronto da processare, posso iniziare la lettura ram     
             elsif out_valid_sipo = '1' then
                next_state  <= READ_RAM_PCV;  
            else 
                next_state  <= LOAD_SIPO;
             end if;
             
        when READ_RAM_PCV =>
             if m_axis_tready = '0' then
                next_state  <= PAUSE;      -- stallo in pause se DMA non � pronto
             elsif count = 14  then
                next_state  <= RST_SIPO;   -- lettura completata posso ripartire a prelevare i dati dal DMA
            else 
                next_state <= READ_RAM_PCV;
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
