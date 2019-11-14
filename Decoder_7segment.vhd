----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:25:47 10/03/2019 
-- Design Name: 
-- Module Name:    Decoder_7segment - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Decoder_7segment is
	Port (Switch : in STD_LOGIC_VECTOR(3 downto 0); --4 bit input
			DigitSegmen : out STD_LOGIC_VECTOR (3 downto 0); --4 bit output
			Segment	: out STD_LOGIC_VECTOR(7 downto 0)	--4 bit output
			
		);	--enable input
		
		
end Decoder_7segment;

architecture Behavioral of Decoder_7segment is
begin
DigitSegmen <= "0111";


process (Switch)
begin
	case Switch is					  
		when "0000" => Segment <= "01000000";
		when "0001" => Segment <= "11111001";
		when "0010" => Segment <= "10100100";
		when "0011" => Segment <= "10110000";
		when "0100" => Segment <= "10011001";
		when "0101" => Segment <= "10010010";
		when "0110" => Segment <= "10000010";
		when "0111" => Segment <= "11111000";
		when "1000" => Segment <= "10000000";
		when "1001" => Segment <= "10010000";
		when "1010" => Segment <= "10001000";
		when "1011" => Segment <= "10000011";
		when "1100" => Segment <= "11000110";
		when "1101" => Segment <= "10100001";
		when "1110" => Segment <= "10000110";
		when "1111" => Segment <= "10001110";
		when others => Segment <= "11111111";
	end case;

	
end process;


end Behavioral;

