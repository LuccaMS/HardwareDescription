library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


entity cronometro is
Generic (
	N	:	integer := 28
);
Port(
	i_clk,i_rst,i_start,i_stop,i_clear : in std_logic;
	o_contador : out std_logic_vector(N-1 downto 0)
);
end cronometro;

architecture behavioral of cronometro is


	type Estado is (st_idle, st_contar, st_parar);
	
		attribute syn_encoding : string;
		attribute syn_encoding of Estado : type is "safe";
		
		
		signal w_state : Estado;
		signal w_contador: std_logic_vector(N-1 downto 0);
		
begin

 o_contador <= w_contador;

process(i_clk, i_rst)
begin

	if(i_rst = '1') then
		w_contador <= (others => '0');
		w_state <= st_idle;
		
	elsif rising_edge(i_clk) then
	 case w_state is
		when st_idle =>
			if ( i_start = '1') then
				w_contador <= w_contador + '1';
				w_state <= st_contar;
			else
				w_state <= st_idle;
			end if;
	
		when st_contar =>
			w_contador <= w_contador + '1';
			if (i_stop = '1') then
				w_state <= st_parar;
			elsif(i_clear = '1') then
				w_contador <= (others => '0');
				w_state <= st_idle; 
			else
				w_state <= st_contar;
			end if;
							
		when st_parar =>
			if(i_start = '1') then
				w_contador <= w_contador + '1';
				w_state <= st_contar;
			elsif(i_clear = '1') then
				w_contador <= (others => '0');
				w_state <= st_idle;	
			else
				w_state <= st_parar;
			end if;
				
		when others =>
		null;
		
	  end case;
	end if;
	  
end process;
end behavioral;