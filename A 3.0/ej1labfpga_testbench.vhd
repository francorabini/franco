library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ej1labfpga_testbench is
end ej1labfpga_testbench;

architecture Behavioral of ej1labfpga_testbench is

    component ej1labfpga
    Port (
        SW1 : in  STD_LOGIC;
        SW2 : in  STD_LOGIC;
        SW3 : in  STD_LOGIC;
        LED : out STD_LOGIC
    );
    end component;

    signal SW1 : STD_LOGIC := '0';
    signal SW2 : STD_LOGIC := '0';
    signal SW3 : STD_LOGIC := '0';
    signal LED : STD_LOGIC;

begin


    uut: ej1labfpga Port map (
        SW1 => SW1,
        SW2 => SW2,
        SW3 => SW3,
        LED => LED);


    process
    begin
        SW1 <= '0';
        SW2 <= '0';
        SW3 <= '0';
        wait for 10 ns;
        
        SW1 <= '1';
        SW2 <= '0';
        SW3 <= '0';
        wait for 10 ns;

        SW1 <= '0';
        SW2 <= '1';
        SW3 <= '0';
        wait for 10 ns;

        SW1 <= '1';
        SW2 <= '1';
        SW3 <= '0';
        wait for 10 ns;

        SW1 <= '0';
        SW2 <= '0';
        SW3 <= '1';
        wait for 10 ns;
		  
        SW1 <= '1';
        SW2 <= '0';
        SW3 <= '1';
        wait for 10 ns;

        SW1 <= '0';
        SW2 <= '1';
        SW3 <= '1';
        wait for 10 ns;
		  
        SW1 <= '1';
        SW2 <= '1';
        SW3 <= '1';
        wait for 10 ns;
        wait;
    end process;

end Behavioral;
