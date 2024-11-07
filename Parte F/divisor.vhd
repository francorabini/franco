library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divisor is
port(a: in std_logic_vector(5 downto 0); -- a esta representado en formato (4,2)
	b: in std_logic_vector(5 downto 0); -- b esta representado en formato (3,3)
	resul: out std_logic_vector(15 downto 0) -- max. num. a representar necesita 7 bits de parte entera y decido poner 3 a la decimal, agrego mas bits para que compile
	);
end entity divisor;

architecture behavioral of divisor is
	
	signal anuevo : unsigned(15 downto 0); -- 15 digitos ya que A(4,2)= C(7,3). B(3,3) donde C es el cociente
	signal completaentero : std_logic_vector(5 downto 0); --agrega 6 ceros a la parte entera
	signal completadecimal : std_logic_vector(3 downto 0); --agrega 4 ceros a la parte decimal
	
	begin 
	completadecimal <= "0000";
	completaentero <= "000000";
	anuevo <= unsigned(completaentero & a & completadecimal);
	resul <= std_logic_vector(anuevo/unsigned(b));
	
	end architecture behavioral;

