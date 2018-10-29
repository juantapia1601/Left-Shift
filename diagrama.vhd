----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
----------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY diagrama IS
END diagrama;
 
ARCHITECTURE behavior OF diagrama IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multi
    PORT(
         a : IN  std_logic_vector(31 downto 0);
         y : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal y : std_logic_vector(31 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multi PORT MAP (
          a => a,
          y => y
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      a <= x"12345678";
      wait for 100 ns;	

      a <= x"87654321";
      wait;
   end process;

END;
