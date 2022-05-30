library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_ex2 is
end tb_ex2;

architecture behavioral of tb_ex2 is
component ex2 is
	Port(
	
		i_A	:	in	std_logic;
		i_B	:	in	std_logic;
		o_S	:	out std_logic;
		o_C	:	out std_logic
	);
end component;

signal 	w_A : std_logic;
signal	w_B : std_logic;
signal	w_S : std_logic;
signal   w_C : std_logic;


begin

UUT: ex2 
PORT MAP (
	i_A => w_A,
	i_B => w_B,
	o_S => w_S,
	O_c => W_c
);

