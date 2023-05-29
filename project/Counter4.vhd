----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:10:19 06/02/2022 
-- Design Name: 
-- Module Name:    Counter4 - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Counter4 is
    Port ( rst,clk,en : in std_logic;
           o: out std_logic_vector(0 to 2));
end Counter4;

architecture count_arch of Counter4 is
  signal count : std_logic_vector(0 to 2);
    begin
      process(rst,clk,en)
        begin
         if (rst = '1') then count <= "000";
         elsif (clk'event and clk = '1' and en='1' ) then count <= count + 1;
         end if;
      end process;
  o <= count;
end count_arch;                          
		
