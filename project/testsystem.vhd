--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:16:47 06/02/2022
-- Design Name:   
-- Module Name:   D:/project12th/testsystem.vhd
-- Project Name:  project12th
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: system
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testsystem IS
END testsystem;
 
ARCHITECTURE behavior OF testsystem IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT system
    PORT(
         START : IN  std_logic;
         CLK : IN  std_logic;
         WRITE_BUS_DR : INOUT  std_logic_vector(7 downto 0);
         WRITE_BUS_AC : INOUT  std_logic_vector(7 downto 0);
         WRITE_BUS_IR : INOUT  std_logic_vector(7 downto 0);
         WRITE_BUS_MEM : INOUT  std_logic_vector(7 downto 0);
         WRITE_BUS_AR : INOUT  std_logic_vector(7 downto 0);
         WRITE_BUS_PC : INOUT  std_logic_vector(7 downto 0);
         T_DEC : INOUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal START : std_logic := '0';
   signal CLK : std_logic := '0';

	--BiDirs
   signal WRITE_BUS_DR : std_logic_vector(7 downto 0);
   signal WRITE_BUS_AC : std_logic_vector(7 downto 0);
   signal WRITE_BUS_IR : std_logic_vector(7 downto 0);
   signal WRITE_BUS_MEM : std_logic_vector(7 downto 0);
   signal WRITE_BUS_AR : std_logic_vector(7 downto 0);
   signal WRITE_BUS_PC : std_logic_vector(7 downto 0);
   signal T_DEC : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 1 us;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: system PORT MAP (
          START => START,
          CLK => CLK,
          WRITE_BUS_DR => WRITE_BUS_DR,
          WRITE_BUS_AC => WRITE_BUS_AC,
          WRITE_BUS_IR => WRITE_BUS_IR,
          WRITE_BUS_MEM => WRITE_BUS_MEM,
          WRITE_BUS_AR => WRITE_BUS_AR,
          WRITE_BUS_PC => WRITE_BUS_PC,
          T_DEC => T_DEC
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;


   -- Stimulus process
   stim_proc: process
   begin			
   START <= '1';
	wait for CLK_period;
	START <= '0';
      wait;
   end process;

END;
