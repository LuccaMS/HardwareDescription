library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity Ex2completo is 
	port(
	
	i_A	:	in	std_logic;
	i_B	:	in	std_logic;
	i_C	:	in	std_logic;
	o_S	:	out std_logic;
	o_C	:	out std_logic
	);
end Ex2completo;


architecture behavioral of Ex2completo is

	signal w_A	: std_logic;
	signal w_B	: std_logic;
	signal w_C	: std_logic;

-----------------------------
	component ex2 is 
	Port(
		i_A	:	in	std_logic;
		i_B	:	in	std_logic;
		o_S	:	out std_logic;
		o_C	:	out std_logic
	);
end component;

------------------------------
	begin
	
	UO1	: ex2
		PORT MAP (
		i_A	=>	i_A,
		i_B	=> i_B,
		o_S	=> w_A,
		o_C	=> w_B
		);
	
	UO2	: ex2
		PORT MAP (
		i_A	=>	w_A,
		i_B	=> i_C,
		o_S	=> o_S,
		o_C	=> w_C
		);
		
		o_C <= w_C or w_B;
		
end behavioral;
	