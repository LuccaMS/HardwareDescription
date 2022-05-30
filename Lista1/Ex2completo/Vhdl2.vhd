library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_ex2 is
end tb_ex2;


architecture behavioral of tb_ex2 is

component Ex2completo is 
	port(
	i_A	:	in	std_logic;
	i_B	:	in	std_logic;
	i_C	:	in	std_logic;
	o_S	:	out std_logic;
	o_C	:	out std_logic
	);
end component;


signal w_A : std_logic;
signal w_B : std_logic;
signal w_C : std_logic;
signal w_OS : std_logic;
signal w_OC: std_logic;

begin

UUT : ex2completo 
PORT MAP(
	i_A => w_A,
	i_B => w_B,
	i_C => w_C,
	o_S => w_OS,
	O_c => w_OC
);

PROCESS
BEGIN

	w_A <= '0';
	w_B <= '0';
	w_C <= '0';
	WAIT FOR	20 NS;
	
	
	w_A <= '1';
	w_B <= '0';
	w_C <= '0';
	WAIT FOR	20 NS;
	
	
	w_A <= '0';
	w_B <= '1';
	w_C <= '0';
	WAIT FOR	20 NS;
	
	
	
	w_A <= '0';
	w_B <= '0';
	w_C <= '1';
	WAIT FOR	20 NS;
	
	
	
	w_A <= '0';
	w_B <= '1';
	w_C <= '1';
	WAIT FOR	20 NS;
	
	
	w_A <= '1';
	w_B <= '1';
	w_C <= '1';
	WAIT FOR	20 NS;
	
	w_A <= '1';
	w_B <= '1';
	w_C <= '0';
	WAIT FOR	20 NS;
	
	w_A <= '1';
	w_B <= '0';
	w_C <= '0';
	WAIT FOR	20 NS;
	
	w_A <= '1';
	w_B <= '0';
	w_C <= '1';
	WAIT FOR	20 NS;

END PROCESS;
END BEHAVIORAL;


