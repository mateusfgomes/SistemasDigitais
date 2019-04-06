Library ieee;
Use ieee.std_logic_1164.all;

Entity elevador is

Port(ck: IN std_logic;
	  clk_button: IN std_logic;
	  rst: IN std_logic;
	  rst_db: IN std_logic;
	  escolha: IN std_logic_vector(3 DOWNTO 0);
	  saida: OUT std_logic_vector(3 DOWNTO 0);
	  display: OUT std_logic_vector (6 DOWNTO 0);	  
	  porta: OUT std_logic_vector (6 DOWNTO 0)
	  );
end elevador;

Architecture arch of elevador is
	COMPONENT debouncer
	Port(clk, rst_n, inb: IN std_logic;
		outb: OUT std_logic);
	end COMPONENT;
	
	TYPE st is (andar0, andar1 , andar2, andar3, andar4, andar5, andar6, andar7, andar8, andar9, andar10, andar11, andar12, andar13, andar14, andar15);
	Signal estado:st;
	Signal out_clk_db, out_rst_db: std_logic;
	Signal out_chave_db: std_logic_vector(3 DOWNTO 0);

BEGIN

		D1 : debouncer PORT MAP (clk => ck, rst_n => rst_db, inb => clk_button, outb => out_clk_db);
		D2 : debouncer PORT MAP (clk => ck, rst_n => rst_db, inb => rst, outb => out_rst_db);
		D3 : debouncer PORT MAP (clk => ck, rst_n => rst_db, inb => escolha(0), outb => out_chave_db(0));	
		D4 : debouncer PORT MAP (clk => ck, rst_n => rst_db, inb => escolha(1), outb => out_chave_db(1));
		D5 : debouncer PORT MAP (clk => ck, rst_n => rst_db, inb => escolha(2), outb => out_chave_db(2));
		D6 : debouncer PORT MAP (clk => ck, rst_n => rst_db, inb => escolha(3), outb => out_chave_db(3));
		
	process(out_clk_db, out_rst_db)
	begin		
		IF	out_rst_db = '1' THEN
			estado <= andar0;
		ELSIF rising_edge(out_clk_db) THEN
			CASE estado IS
				WHEN andar0 =>
					IF out_chave_db /= "0000" THEN 
					estado <= andar1;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSE									 
					estado <= andar0;
					display <= "0001100"; -- parado
					porta <= "0001000";	-- porta aberta
					END IF;
				WHEN andar1 =>
					IF out_chave_db = "0000" THEN
					estado <= andar0;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "0001" THEN 
					estado <= andar1;
					display <= "0001100"; -- parado
					porta <= "0001000";	-- porta aberta
					ELSE 										
					estado <= andar2;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					END IF;
				WHEN andar2 =>
					IF out_chave_db = "0000" THEN 
					estado <= andar1;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "0001" THEN 
					estado <= andar1;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "0010" THEN 
					estado <= andar2;
					display <= "0001100"; -- parado
					porta <= "0001000";	-- porta aberta
					ELSE 										
					estado <= andar3;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					END IF;
				WHEN andar3 =>
					IF out_chave_db = "0000" THEN 
					estado <= andar2;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "0001" THEN 
					estado <= andar2;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "0010" THEN 
					estado <= andar2;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "0011" THEN 
					estado <= andar3;
					display <= "0001100"; -- parado
					porta <= "0001000";	-- porta aberta
					ELSE										
					estado <= andar4;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					END IF;
				WHEN andar4 =>
					IF out_chave_db = "0000" THEN 
					estado <= andar3;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "0001" THEN 
					estado <= andar3;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "0010" THEN 
					estado <= andar3;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "0011" THEN 
					estado <= andar3;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "0100" THEN 
					estado <= andar4;
					display <= "0001100"; -- parado
					porta <= "0001000";	-- porta aberta
					ELSE                             
					estado <= andar5;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					END IF;
				WHEN andar5 =>
					IF out_chave_db = "0000" THEN 
					estado <= andar4;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "0001" THEN 
					estado <= andar4;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "0010" THEN 
					estado <= andar4;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "0011" THEN 
					estado <= andar4;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "0100" THEN 
					estado <= andar4;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "0101" THEN 
					estado <= andar5;
					display <= "0001100"; -- parado
					porta <= "0001000";	-- porta aberta
					ELSE 								 	
					estado <= andar6;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					END IF;
				WHEN andar6 =>
					IF out_chave_db = "0000" THEN 
					estado <= andar5;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "0001" THEN 
					estado <= andar5;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "0010" THEN 
					estado <= andar5;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "0011" THEN 
					estado <= andar5;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "0100" THEN 
					estado <= andar5;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "0101" THEN 
					estado <= andar5;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "0110" THEN 
					estado <= andar6;
					display <= "0001100"; -- parado
					porta <= "0001000";	-- porta aberta
					ELSE 								   
					estado <= andar7;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					END IF;
				WHEN andar7 =>
					IF out_chave_db = "1000" THEN 
					estado <= andar8;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1001" THEN 
					estado <= andar8;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1010" THEN 
					estado <= andar8;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1011" THEN 
					estado <= andar8;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1100" THEN 
					estado <= andar8;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1101" THEN 
					estado <= andar8;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1110" THEN 
					estado <= andar8;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1111" THEN 
					estado <= andar8;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "0111" THEN 
					estado <= andar7;
					display <= "0001100"; -- parado
					porta <= "0001000";	-- porta aberta
					ELSE										
					estado <= andar6;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					END IF;
				WHEN andar8	=>
					IF out_chave_db = "1001" THEN 
					estado <= andar9;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1010" THEN 
					estado <= andar9;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1011" THEN 
					estado <= andar9;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1100" THEN 
					estado <= andar9;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1101" THEN 
					estado <= andar9;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1110" THEN 
					estado <= andar9;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1111" THEN 
					estado <= andar9;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1000" THEN 
					estado <= andar8;
					display <= "0001100"; -- parado
					porta <= "0001000";	-- porta aberta
					ELSE										
					estado <= andar7;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					END IF;
				WHEN andar9 =>
					IF out_chave_db = "1010" THEN 
					estado <= andar10;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1011" THEN 
					estado <= andar10;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1100" THEN 
					estado <= andar10;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1101" THEN 
					estado <= andar10;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1110" THEN 
					estado <= andar10;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1111" THEN 
					estado <= andar10;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1001" THEN 
					estado <= andar9;
					display <= "0001100"; -- parado
					porta <= "0001000";	-- porta aberta
					ELSE										
					estado <= andar8;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					END IF;
				WHEN andar10 =>
					IF out_chave_db = "1011" THEN 
					estado <= andar11;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1100" THEN 
					estado <= andar11;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1101" THEN 
					estado <= andar11;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1110" THEN 
					estado <= andar11;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1111" THEN 
					estado <= andar11;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1010" THEN 
					estado <= andar10;
					display <= "0001100"; -- parado
					porta <= "0001000";	-- porta aberta
					ELSE										
					estado <= andar9;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					END IF;
				WHEN andar11 =>
					IF out_chave_db = "1100" THEN 
					estado <= andar12;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1101" THEN 
					estado <= andar12;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1110" THEN 
					estado <= andar12;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1111" THEN 
					estado <= andar12;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1011" THEN 
					estado <= andar11;
					display <= "0001100"; -- parado
					porta <= "0001000";	-- porta aberta
					ELSE										
					estado <= andar10;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					END IF;
				WHEN andar12 =>
					IF out_chave_db = "1101" THEN 
					estado <= andar13;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1110" THEN 
					estado <= andar13;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1111" THEN 
					estado <= andar13;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1100" THEN 
					estado <= andar12;
					display <= "0001100"; -- parado
					porta <= "0001000";	-- porta aberta
					ELSE 										
					estado <= andar11;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					END IF;
				WHEN andar13 =>
					IF out_chave_db = "1110" THEN 
					estado <= andar14;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1111" THEN 
					estado <= andar14;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1101" THEN 
					estado <= andar13;
					display <= "0001100"; -- parado
					porta <= "0001000";	-- porta aberta
					ELSE  									
					estado <= andar12;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					END IF;
				WHEN andar14 =>
					IF out_chave_db = "1111" THEN 
					estado <= andar15;
					display <= "0010010"; -- subindo
					porta <= "0001110"; -- porta fechada
					ELSIF out_chave_db = "1110" THEN 
					estado <= andar14;
					display <= "0001100"; -- parado
					porta <= "0001000";	-- porta aberta
					ELSE 									  
					estado <= andar13; 
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					END IF;
				WHEN andar15 =>
					IF out_chave_db = "1111" THEN 
					estado <= andar15;
					display <= "0001100"; -- parado
					porta <= "0001000";	-- porta aberta
					ELSE									
					estado <= andar14;
					display <= "0100001"; -- descendo
					porta <= "0001110"; -- porta fechada
					END IF;
			END CASE;
		END IF;
	end process;

WITH estado SELECT saida <=
			"0000" WHEN andar0,
			"0001" WHEN andar1,
			"0010" WHEN andar2,
			"0011" WHEN andar3,
			"0100" WHEN andar4,
			"0101" WHEN andar5,
			"0110" WHEN andar6,
			"0111" WHEN andar7,
			"1000" WHEN andar8,
			"1001" WHEN andar9,
			"1010" WHEN andar10,
			"1011" WHEN andar11,
			"1100" WHEN andar12,
			"1101" WHEN andar13,
			"1110" WHEN andar14,
			"1111" WHEN andar15;
END arch;
			