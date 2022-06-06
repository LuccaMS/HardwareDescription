library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


entity test_cronometro is
end test_cronometro;

architecture behavioral of test_cronometro  is

component cronometro
Generic (
	N	:	integer := 28
);
Port(
	i_clk,i_rst,i_start,i_stop,i_clear : in std_logic;
	o_contador : out std_logic_vector(N-1 downto 0)
);
end component;

signal w_clk : std_logic;
signal w_rst : std_logic;
signal w_start : std_logic;
signal w_stop : std_logic;
signal w_clear : std_logic;
signal w_contador : std_logic_vector(15 downto 0);
		
begin


UUT : Cronometro
 Generic Map(
	N => 16
 )
 Port Map( 
	i_clk => w_clk,
	i_rst => w_rst,
	i_start => w_start,
	i_stop => w_stop,
	i_clear => w_clear,
	o_contador => w_contador
);

PROCESS
BEGIN
w_clk <= '0'; 
wait for 10 ns;
w_clk <= '1';
wait for 10 ns;
end process;

Process
begin
w_rst <= '1';
wait for 100 ns;
w_Rst <= '0';
wait;
end process;


PROCESS
BEGIN
wait for 110 ns;

w_start <= '1';
wait for 20 ns;
w_start <= '0';
wait for 400 ns;

w_stop <= '1';
wait for 20 ns;
w_stop <= '0';
wait for 400 ns;

w_start <= '1';
wait for 20 ns;
w_start <= '0';
wait for 200 ns;
w_clear <= '1';
wait for 20 ns;
w_clear <= '0';
wait;

end process;

end behavioral;