--------------------------------------------------------------------------------
-- Siawash
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY HALF_Adder_tb IS
END HALF_Adder_tb;
 
ARCHITECTURE behavior OF HALF_Adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Half_Adder
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Sum : OUT  std_logic;
         Carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal Sum : std_logic;
   signal Carry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Half_Adder PORT MAP (
          A => A,
          B => B,
          Sum => Sum,
          Carry => Carry
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		A <= '0';
		B <= '0';
		wait for 100 ns;
		A <= '1';
		B <= '0';		
		wait for 100 ns;
		A <= '0';
		B <= '1';		
		wait for 100 ns;
		A <= '1';
		B <= '1';		
		wait for 100 ns;
      wait;
   end process;

END;
