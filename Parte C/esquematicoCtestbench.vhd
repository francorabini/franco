library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_unsigned.ALL;

entity esquematicoCtestbench is
end esquematicoCtestbench;

architecture behavior of esquematicoCtestbench is

    signal CLK_tb : std_logic := '0';
    signal PRN_tb : std_logic := '1';
    signal borrin_tb : std_logic := '0';
    signal a1_tb : std_logic := '0';
    signal a2_tb : std_logic := '0';
    signal a3_tb : std_logic := '0';
    signal a4_tb : std_logic := '0';
    signal b1_tb : std_logic := '0';
    signal b2_tb : std_logic := '0';
    signal b3_tb : std_logic := '0';
    signal b4_tb : std_logic := '0';
    signal borrout_tb : std_logic;
    signal r1_tb : std_logic;
    signal r2_tb : std_logic;
    signal r3_tb : std_logic;
    signal r4_tb : std_logic;
	 
	  constant clk_period : time := 10 ns;

    component esquematicoCcod
        port(
            CLK : in std_logic;
            PRN : in std_logic;
            borrin : in std_logic;
            a1 : in std_logic;
            a2 : in std_logic;
            a3 : in std_logic;
            a4 : in std_logic;
            b1 : in std_logic;
            b2 : in std_logic;
            b3 : in std_logic;
            b4 : in std_logic;
            borrout : out std_logic;
            r4 : out std_logic;
            r3 : out std_logic;
            r2 : out std_logic;
            r1 : out std_logic
        );
    end component;

begin

    uut: esquematicoCcod port map (
        CLK => CLK_tb,
        PRN => PRN_tb,
        borrin => borrin_tb,
        a1 => a1_tb,
        a2 => a2_tb,
        a3 => a3_tb,
        a4 => a4_tb,
        b1 => b1_tb,
        b2 => b2_tb,
        b3 => b3_tb,
        b4 => b4_tb,
        borrout => borrout_tb,
        r1 => r1_tb,
        r2 => r2_tb,
        r3 => r3_tb,
        r4 => r4_tb
    );

    -- Generador de reloj
  clk_process : process
    begin
        while true loop
            CLK_tb <= '0';
            wait for clk_period / 2;
            CLK_tb <= '1';
            wait for clk_period / 2;
        end loop;
    end process;


stimulus_process : process
begin
    -- Esperar un ciclo de reloj antes de comenzar
    wait until rising_edge(CLK_tb);
    
    PRN_tb <= '1';
    borrin_tb <= '0';
    a1_tb <= '0'; a2_tb <= '0'; a3_tb <= '0'; a4_tb <= '0';
    b1_tb <= '0'; b2_tb <= '0'; b3_tb <= '0'; b4_tb <= '0';
    wait until rising_edge(CLK_tb);

    -- Aplicar Reset
    PRN_tb <= '0';  -- Activar el reset
    wait until rising_edge(CLK_tb);
    PRN_tb <= '1';  -- Desactivar el reset
    
    -- Aplicar estímulos a las entradas
    a1_tb <= '1'; a2_tb <= '1'; a3_tb <= '0'; a4_tb <= '1';
    b1_tb <= '0'; b2_tb <= '1'; b3_tb <= '1'; b4_tb <= '0';
    borrin_tb <= '1';
    wait until rising_edge(CLK_tb);

    -- Cambiar estímulos
    a1_tb <= '0'; a2_tb <= '1'; a3_tb <= '1'; a4_tb <= '0';
    b1_tb <= '1'; b2_tb <= '0'; b3_tb <= '1'; b4_tb <= '1';
    borrin_tb <= '0';
    wait until rising_edge(CLK_tb);

    -- Finalizar simulación con una espera válida
    wait until rising_edge(CLK_tb);
end process;



end behavior;