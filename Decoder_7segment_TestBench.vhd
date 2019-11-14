--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:11:50 10/31/2019
-- Design Name:   
-- Module Name:   E:/Documents/Kuliah/Semester_5/Prak. VLSI/Pertemuan_05/Percobaan_02/Decoder_7segment_TestBench.vhd
-- Project Name:  Percobaan_02
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Decoder_7segment
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
 
ENTITY Decoder_7segment_TestBench IS
END Decoder_7segment_TestBench;
 
ARCHITECTURE behavior OF Decoder_7segment_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Decoder_7segment
    PORT(
         Switch : IN  std_logic_vector(3 downto 0);
         DigitSegmen : OUT  std_logic_vector(3 downto 0);
         Segment : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Switch : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal DigitSegmen : std_logic_vector(3 downto 0);
   signal Segment : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decoder_7segment PORT MAP (
          Switch => Switch,
          DigitSegmen => DigitSegmen,
          Segment => Segment
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		Switch <= "0010";
      wait for 100 ns;	

      wait for <clock>_period*10;
      -- insert stimulus here 

      wait;
   end process;

END;
