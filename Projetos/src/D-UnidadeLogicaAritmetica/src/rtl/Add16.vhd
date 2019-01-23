-- Elementos de Sistemas
-- by Luciano Soares
-- Add16.vhd

-- Soma dois valores de 16 bits
-- ignorando o carry mais significativo

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Add16 is
	port(
		a   :  in STD_LOGIC_VECTOR(15 downto 0);
		b   :  in STD_LOGIC_VECTOR(15 downto 0);
		q   : out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture rtl of Add16 is

component FullAdder is
	port(
		a,b,c:      in STD_LOGIC;   -- entradas
		soma,vaium: out STD_LOGIC   -- sum e carry
	);
end component;
 SIGNAL fiozin: std_logic_vector(15 downto 0);
begin


saida0: FullAdder port map ( a => a(0), b => b(0), c => '0', soma => q(0));
saida1: FullAdder port map ( a => a(1), b => b(1), vaium => fiozin(1), c => fiozin(0), soma => q(1));
saida2: FullAdder port map ( a => a(2), b => b(2), vaium => fiozin(2), c => fiozin(1), soma => q(2));
saida3: FullAdder port map ( a => a(3), b => b(3), vaium => fiozin(3), c => fiozin(2), soma => q(3));
saida4: FullAdder port map ( a => a(4), b => b(4), vaium => fiozin(4), c => fiozin(3), soma => q(4));
saida5: FullAdder port map ( a => a(5), b => b(5), vaium => fiozin(5), c => fiozin(4), soma => q(5));
saida6: FullAdder port map ( a => a(6), b => b(6), vaium => fiozin(6), c => fiozin(5), soma => q(6));
saida7: FullAdder port map ( a => a(7), b => b(7), vaium => fiozin(7), c => fiozin(6), soma => q(7));
saida8: FullAdder port map ( a => a(8), b => b(8), vaium => fiozin(8), c => fiozin(7), soma => q(8));
saida9: FullAdder port map ( a => a(9), b => b(9), vaium => fiozin(9), c => fiozin(8), soma => q(9));
saida10: FullAdder port map ( a => a(10), b => b(10), vaium => fiozin(10), c => fiozin(9), soma => q(10));
saida11: FullAdder port map ( a => a(11), b => b(11), vaium => fiozin(11), c => fiozin(10), soma => q(11));
saida12: FullAdder port map ( a => a(12), b => b(12), vaium => fiozin(12), c => fiozin(11), soma => q(12));
saida13: FullAdder port map ( a => a(13), b => b(13), vaium => fiozin(13), c => fiozin(12), soma => q(13));
saida14: FullAdder port map ( a => a(14), b => b(14), vaium => fiozin(14), c => fiozin(13), soma => q(14));
saida15: FullAdder port map ( a => a(15), b => b(15), vaium => fiozin(15), c => fiozin(14), soma => q(15));

end architecture;
