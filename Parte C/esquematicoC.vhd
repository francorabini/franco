-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Thu Nov 07 14:55:49 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY esquematicoC IS 
	PORT
	(
		CLK :  IN  STD_LOGIC;
		PRN :  IN  STD_LOGIC;
		borrin :  IN  STD_LOGIC;
		a1 :  IN  STD_LOGIC;
		a2 :  IN  STD_LOGIC;
		a3 :  IN  STD_LOGIC;
		a4 :  IN  STD_LOGIC;
		b1 :  IN  STD_LOGIC;
		b2 :  IN  STD_LOGIC;
		b3 :  IN  STD_LOGIC;
		b4 :  IN  STD_LOGIC;
		borrout :  OUT  STD_LOGIC;
		r4 :  OUT  STD_LOGIC;
		r3 :  OUT  STD_LOGIC;
		r2 :  OUT  STD_LOGIC;
		r1 :  OUT  STD_LOGIC
	);
END esquematicoC;

ARCHITECTURE bdf_type OF esquematicoC IS 

COMPONENT restadorc
	PORT(a : IN STD_LOGIC;
		 b : IN STD_LOGIC;
		 borrin : IN STD_LOGIC;
		 borrout : OUT STD_LOGIC;
		 resta : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	DFF_inst10 :  STD_LOGIC;
SIGNAL	DFF_inst7 :  STD_LOGIC;
SIGNAL	DFF_inst12 :  STD_LOGIC;
SIGNAL	DFF_inst4 :  STD_LOGIC;
SIGNAL	DFF_inst8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	DFF_inst5 :  STD_LOGIC;
SIGNAL	DFF_inst9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	DFF_inst6 :  STD_LOGIC;
SIGNAL	DFF_inst11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;


BEGIN 



b2v_inst : restadorc
PORT MAP(a => DFF_inst10,
		 b => DFF_inst7,
		 borrin => DFF_inst12,
		 borrout => SYNTHESIZED_WIRE_0,
		 resta => SYNTHESIZED_WIRE_4);


b2v_inst1 : restadorc
PORT MAP(a => DFF_inst4,
		 b => DFF_inst8,
		 borrin => SYNTHESIZED_WIRE_0,
		 borrout => SYNTHESIZED_WIRE_6,
		 resta => SYNTHESIZED_WIRE_3);


PROCESS(CLK,PRN,PRN)
BEGIN
IF (PRN = '0') THEN
	DFF_inst10 <= '0';
ELSIF (PRN = '0') THEN
	DFF_inst10 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_inst10 <= a1;
END IF;
END PROCESS;


PROCESS(CLK,PRN,PRN)
BEGIN
IF (PRN = '0') THEN
	DFF_inst11 <= '0';
ELSIF (PRN = '0') THEN
	DFF_inst11 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_inst11 <= b4;
END IF;
END PROCESS;


PROCESS(CLK,PRN,PRN)
BEGIN
IF (PRN = '0') THEN
	DFF_inst12 <= '0';
ELSIF (PRN = '0') THEN
	DFF_inst12 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_inst12 <= borrin;
END IF;
END PROCESS;


PROCESS(CLK,PRN,PRN)
BEGIN
IF (PRN = '0') THEN
	r4 <= '0';
ELSIF (PRN = '0') THEN
	r4 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	r4 <= SYNTHESIZED_WIRE_1;
END IF;
END PROCESS;


PROCESS(CLK,PRN,PRN)
BEGIN
IF (PRN = '0') THEN
	r3 <= '0';
ELSIF (PRN = '0') THEN
	r3 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	r3 <= SYNTHESIZED_WIRE_2;
END IF;
END PROCESS;


PROCESS(CLK,PRN,PRN)
BEGIN
IF (PRN = '0') THEN
	r2 <= '0';
ELSIF (PRN = '0') THEN
	r2 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	r2 <= SYNTHESIZED_WIRE_3;
END IF;
END PROCESS;


PROCESS(CLK,PRN,PRN)
BEGIN
IF (PRN = '0') THEN
	r1 <= '0';
ELSIF (PRN = '0') THEN
	r1 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	r1 <= SYNTHESIZED_WIRE_4;
END IF;
END PROCESS;



b2v_inst2 : restadorc
PORT MAP(a => DFF_inst5,
		 b => DFF_inst9,
		 borrin => SYNTHESIZED_WIRE_6,
		 borrout => SYNTHESIZED_WIRE_2,
		 resta => SYNTHESIZED_WIRE_7);


b2v_inst3 : restadorc
PORT MAP(a => DFF_inst6,
		 b => DFF_inst11,
		 borrin => SYNTHESIZED_WIRE_7,
		 borrout => SYNTHESIZED_WIRE_5,
		 resta => SYNTHESIZED_WIRE_1);


PROCESS(CLK,PRN,PRN)
BEGIN
IF (PRN = '0') THEN
	DFF_inst4 <= '0';
ELSIF (PRN = '0') THEN
	DFF_inst4 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_inst4 <= a2;
END IF;
END PROCESS;


PROCESS(CLK,PRN,PRN)
BEGIN
IF (PRN = '0') THEN
	DFF_inst5 <= '0';
ELSIF (PRN = '0') THEN
	DFF_inst5 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_inst5 <= a3;
END IF;
END PROCESS;


PROCESS(CLK,PRN,PRN)
BEGIN
IF (PRN = '0') THEN
	DFF_inst6 <= '0';
ELSIF (PRN = '0') THEN
	DFF_inst6 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_inst6 <= a4;
END IF;
END PROCESS;


PROCESS(CLK,PRN,PRN)
BEGIN
IF (PRN = '0') THEN
	DFF_inst7 <= '0';
ELSIF (PRN = '0') THEN
	DFF_inst7 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_inst7 <= b1;
END IF;
END PROCESS;


PROCESS(CLK,PRN,PRN)
BEGIN
IF (PRN = '0') THEN
	DFF_inst8 <= '0';
ELSIF (PRN = '0') THEN
	DFF_inst8 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_inst8 <= b2;
END IF;
END PROCESS;


PROCESS(CLK,PRN,PRN)
BEGIN
IF (PRN = '0') THEN
	DFF_inst9 <= '0';
ELSIF (PRN = '0') THEN
	DFF_inst9 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_inst9 <= b3;
END IF;
END PROCESS;


END bdf_type;