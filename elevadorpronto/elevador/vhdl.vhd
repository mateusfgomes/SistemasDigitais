Library ieee;
Use ieee.std_logic_1164.all;

Entity vhdl is
Port(D, Clock: IN std_logic;
		Q, Q_bar: OUT std_logic);
End vhdl;

Architecture arq of vhdl is
	begin
	process(Clock)
	Begin
		IF Clock'EVENT AND Clock = '1' THEN
			Q <= D;
			Q_bar <= not(D);
		End IF;
	End PROCESS;
End arq;