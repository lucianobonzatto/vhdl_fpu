Library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity display7seg is
	PORT(	digit:	IN std_logic_vector (3 downto 0);
			leda:		OUT std_logic;
			ledb:		OUT std_logic;
			ledc:		OUT std_logic;
			ledd:		OUT std_logic;
			lede:		OUT std_logic;
			ledf:		OUT std_logic;
			ledg:		OUT std_logic);
end entity;

Architecture a_display7seg of display7seg is

signal data: std_logic_vector(6 downto 0);
Begin

process(data)
	begin
		case digit is
			when "0000" =>	data <= "1111110"; --0
			when "0001" =>	data <= "0110000"; --1
			when "0010" =>	data <= "1111001"; --2
			when "0011" =>	data <= "0110011"; --3
			when "0100" =>	data <= "0110011"; --4
			when "0101" =>	data <= "1011011"; --5
			when "0110" =>	data <= "1011111"; --6
			when "0111" =>	data <= "1110000"; --7
			when "1000" =>	data <= "1111111"; --8
			when "1001" =>	data <= "1111011"; --9
			when "1010" =>	data <= "1110111"; --A
			when "1011" =>	data <= "0011111"; --B
			when "1100" =>	data <= "1001110"; --C
			when "1101" =>	data <= "1001101"; --D
			when "1110" =>	data <= "1001111"; --E
			when "1111" =>	data <= "0000111"; --F
		end case;
		
		leda <= not data(6);
		ledb <= not data(5);
		ledc <= not data(4);
		ledd <= not data(3);
		lede <= not data(2);
		ledf <= not data(1);
		ledg <= not data(0);
end process;
End architecture;