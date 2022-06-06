library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity test_multiplex is
end test_multiplex;

architecture behavioral of test_multiplex is


component multiplex is
	port(
	i_A : in std_logic_vector(15 downto 0);
	i_B : in std_logic_vector(15 downto 0);
	i_C : in std_logic_vector(15 downto 0);
	i_D : in std_logic_vector(15 downto 0);
	i_E : in std_logic_vector(15 downto 0);
	i_F : in std_logic_vector(15 downto 0);
	i_G : in std_logic_vector(15 downto 0);
	i_sel : in std_logic_vector(2 downto 0);
	o_c : out std_logic_vector(15 downto 0)
	);
end component;

signal w_A : std_logic_vector(15 downto 0);
signal w_B : std_logic_vector(15 downto 0);
signal w_C : std_logic_vector(15 downto 0);
signal w_D : std_logic_vector(15 downto 0);
signal w_E : std_logic_vector(15 downto 0);
signal w_F : std_logic_vector(15 downto 0);
signal w_G : std_logic_vector(15 downto 0);
signal w_SEL : std_logic_vector(2 downto 0);
signal w_CC : std_logic_vector(15 downto 0);

begin

UU0 : multiplex
PORT MAP (
	i_A => w_A,
	i_B => w_B,
	i_C => w_C,
	i_D => w_D,
	i_E => w_E,
	i_F => w_F,
	i_G => w_G,
	i_sel => w_SEL,
	o_c => w_CC
);

process
begin 

	w_A <= "0000000001101010";
	w_B <= "0000000011010110";
	w_C <= "0000000000101011";
	w_D <= "0000000000001001";
	w_E <= "0000000010101100";
	w_F <= "0000000000011010";
	w_G <= "0000000001101111";
	
   w_sel <= "000";
	wait for 20 ns;
	

	w_sel <= "001";
	wait for 20 ns;
	

	
	w_sel <= "010";
	wait for 20 ns;
	

	
	w_sel <= "011";
	wait for 20 ns;

	w_sel <= "100";
	wait for 20 ns;
	
	

	w_sel <= "101";
	wait for 20 ns;
	
	
	w_sel <= "110";
	wait for 20 ns;
	

	
	w_sel <= "111";
	wait for 20 ns;
end process;
end behavioral;












