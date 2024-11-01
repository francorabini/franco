library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity restadortestbench is
end restadortestbench;

architecture testbench of restadortestbench is

    signal in_a : std_logic := '0';
	 signal in_b :  std_logic := '0';
	 signal in_borrin :  std_logic := '0';
	 signal clk: std_logic := '0';
	 signal o_borrout : std_logic;
	 signal o_resta : std_logic;
	 
    component restador
        port(
            in_a : in std_logic;
            in_b : in std_logic;
            in_borrin : in std_logic;
            clk : in std_logic;
            o_borrout : out std_logic;
            o_resta : out std_logic
        );
    end component;

begin
    uut: restador 
        port map (
            in_a => in_a,
            in_b => in_b,
            in_borrin => in_borrin,
            clk => clk,
            o_borrout => o_borrout,
            o_resta => o_resta
        );

    clk_process : process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;
	 
    stim_proc: process
    begin
        in_a <= '0';
        in_b <= '0';
        in_borrin <= '0';

        wait for 20 ns;
        
        in_a <= '0'; in_b <= '0'; in_borrin <= '0';
        wait for 30 ns;
        in_a <= '0'; in_b <= '1'; in_borrin <= '0';  
        wait for 30 ns;
        in_a <= '1'; in_b <= '0'; in_borrin <= '0';  
        wait for 30 ns;
        in_a <= '1'; in_b <= '1'; in_borrin <= '0'; 
        wait for 30 ns;
        in_a <= '0'; in_b <= '0'; in_borrin <= '1';  
        wait for 30 ns;
        in_a <= '0'; in_b <= '1'; in_borrin <= '1';  
        wait for 30 ns;
        in_a <= '1'; in_b <= '0'; in_borrin <= '1';  
        wait for 30 ns;
        in_a <= '1'; in_b <= '1'; in_borrin <= '1'; 
        wait for 30 ns;
              wait;
    end process;

end testbench;