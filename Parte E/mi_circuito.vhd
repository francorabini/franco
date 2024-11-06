library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mi_circuito is
    Port (
        clock     : in  STD_LOGIC;
        reset     : in  STD_LOGIC;
        SDA       : in  STD_LOGIC;
        SCL       : in  STD_LOGIC;
        fin_dir   : out STD_LOGIC;
        fin_dato  : out STD_LOGIC;
        hab_dato  : in STD_LOGIC;
        hab_dir   : in STD_LOGIC;
        hab_ACK   : in STD_LOGIC
    );
end mi_circuito;

architecture Behavioral of mi_circuito is

    -- Señales internas
    signal contador_7 : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');  -- Contador de 7 (cuenta hasta 7)
    signal registro_7 : STD_LOGIC_VECTOR(6 downto 0) := (others => '0');  -- Registro de 7 bits para SDA
    signal comparador_ref : STD_LOGIC_VECTOR(6 downto 0) := "1010101";  -- Valor fijo para comparación
    signal contador_8 : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');  -- Contador de 8 (cuenta hasta 8)
    signal registro_8 : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');  -- Registro de 8 bits para SDA
    signal and_output     : STD_LOGIC;  -- Salida de la compuerta AND (hab_dir AND SCL)
	 signal soy		: STD_LOGIC;

begin

    -- Compuerta AND entre hab_dir y SCL
    and_output <= hab_dir AND SCL;

    -- Contador de 7 bits, cuyo reloj es la salida de la compuerta AND
    process(clock, reset)
    begin
        if reset = '1' then
            contador_7 <= (others => '0');
        elsif rising_edge(clock) then
            if and_output = '1' then
                if contador_7 = "111" then
                    contador_7 <= (others => '0');  -- Reinicia al llegar a 7
                else
                    contador_7 <= contador_7 + 1;
                end if;
            end if;
        end if;
    end process;

    -- Señal de fin_dir cuando el contador de 7 bits llega a 7
    fin_dir <= '1' when contador_7 = "111" else '0';

    -- Registro de 7 bits que almacena la entrada SDA, con reloj de la compuerta AND
    process(clock, reset)
    begin
        if reset = '1' then
            registro_7 <= (others => '0');
        elsif rising_edge(clock) then
            if and_output = '1' then
                registro_7 <= registro_7(5 downto 0) & SDA;  -- Desplazamiento de bits con entrada SDA
            end if;
        end if;
    end process;

    -- Comparador entre el registro de 7 bits y el valor fijo comparador_ref
    soy <= '1' when registro_7 = comparador_ref else '0';

    -- Registro de 8 bits que almacena SDA, con reloj de la compuerta AND
    process(clock, reset)
    begin
        if reset = '1' then
            registro_8 <= (others => '0');
        elsif rising_edge(clock) and soy = '1' then
            if and_output = '1' then
                registro_8 <= registro_8(6 downto 0) & SDA;  -- Desplazamiento de bits con entrada SDA
            end if;
        end if;
    end process;

    -- Contador de 8 que cuenta hasta 8, con reloj generado por la compuerta AND
    process(clock, reset)
    begin
        if reset = '1' then
            contador_8 <= (others => '0');
        elsif rising_edge(clock) and soy = '1' then
            if and_output = '1' then
                if contador_8 = "111" then  -- Cuando el contador llega a 8
                    contador_8 <= (others => '0');  -- Reinicia al llegar a 8
                    fin_dato <= '1';  -- Activa la señal fin_dato cuando llega a 8
                else
                    contador_8 <= contador_8 + 1;
                    fin_dato <= '0';
                end if;
            end if;
        end if;
    end process;



end Behavioral;