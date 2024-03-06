	component int_sop_2 is
		port (
			ay       : in  std_logic_vector(18 downto 0) := (others => 'X'); -- ay
			by       : in  std_logic_vector(18 downto 0) := (others => 'X'); -- by
			ax       : in  std_logic_vector(17 downto 0) := (others => 'X'); -- ax
			bx       : in  std_logic_vector(17 downto 0) := (others => 'X'); -- bx
			chainin  : in  std_logic_vector(63 downto 0) := (others => 'X'); -- chainin
			resulta  : out std_logic_vector(36 downto 0);                    -- resulta
			chainout : out std_logic_vector(63 downto 0);                    -- chainout
			clk0     : in  std_logic                     := 'X';             -- clk
			clk1     : in  std_logic                     := 'X';             -- clk
			clk2     : in  std_logic                     := 'X';             -- clk
			ena      : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- ena
			aclr0    : in  std_logic                     := 'X';             -- reset
			aclr1    : in  std_logic                     := 'X'              -- reset
		);
	end component int_sop_2;

	u0 : component int_sop_2
		port map (
			ay       => CONNECTED_TO_ay,       --       ay.ay
			by       => CONNECTED_TO_by,       --       by.by
			ax       => CONNECTED_TO_ax,       --       ax.ax
			bx       => CONNECTED_TO_bx,       --       bx.bx
			chainin  => CONNECTED_TO_chainin,  --  chainin.chainin
			resulta  => CONNECTED_TO_resulta,  --  resulta.resulta
			chainout => CONNECTED_TO_chainout, -- chainout.chainout
			clk0     => CONNECTED_TO_clk0,     --     clk0.clk
			clk1     => CONNECTED_TO_clk1,     --     clk1.clk
			clk2     => CONNECTED_TO_clk2,     --     clk2.clk
			ena      => CONNECTED_TO_ena,      --      ena.ena
			aclr0    => CONNECTED_TO_aclr0,    --    aclr0.reset
			aclr1    => CONNECTED_TO_aclr1     --    aclr1.reset
		);

