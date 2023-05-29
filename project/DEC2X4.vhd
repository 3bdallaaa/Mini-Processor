----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:51:10 06/01/2022 
-- Design Name: 
-- Module Name:    DEC2X4 - Behavioral 
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

entity DEC2X4 is 
				port( i :  in std_logic_vector(1 downto 0);
							o : out std_logic_vector(3 downto 0);
							en : in std_logic);
end DEC2X4;

architecture Behavioral of DEC2X4 is

begin
		o<= "0001" when i="00" else
				  "0010" when i="01" else
				  "0100" when i="10" else
				  "1000" when i="11";

end Behavioral;


