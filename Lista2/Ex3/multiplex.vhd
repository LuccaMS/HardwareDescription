library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity multiplex is
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
end multiplex;


architecture behavioral of multiplex is
begin


------------------ Utilizando when else ------------------

-- o_c <= i_A when i_sel = "000" else
--		  i_B when i_sel = "001" else
--		  i_C when i_sel = "010" else
--		  i_D when i_sel = "011" else
--		  i_E when i_sel = "100" else
--		  i_F when i_sel = "101" else
--		  i_G when i_sel = "110" else
--		  "0000000000000000";

with i_sel select o_c <=
	i_A when "000",
	i_B when "001",
	i_C when "010",
	i_D when "011",
	i_E when "100",
	i_F when "101",
	i_G when "110",
	"0000000000000000" when others;


------------------ Utilizando process ------------------	   
--process(i_sel)
--begin
--
--	if (i_sel = "000") then
--		o_C <= i_A;
--	
--	elsif (i_sel = "001") then
--		o_C <= i_B;
--	
--	elsif (i_sel = "010") then
--		o_C <= i_C;
--	
--	elsif (i_sel = "011") then
--		o_C <= i_D;	
--		
--	elsif (i_sel = "100") then
--		o_C <= i_E;
--	
--	elsif (i_sel = "101") then
--		o_C <= i_F;	
--	elsif (i_sel = "110") then
--		o_C <= i_G;	
--	
--	else
--		o_C <= "0000000000000000";
--	
--	end if;
--
--end process;


end behavioral;