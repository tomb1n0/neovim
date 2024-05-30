return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"V13Axel/neotest-pest",
		"olimorris/neotest-phpunit",
	},
	config = function()
		require("neotest").setup({
			adapters = {
				-- TODO: Figure out how to get tests running in docker
				require("neotest-pest")({
					sail_enabled = function()
						return false
					end,
					-- TODO: Get a wrapper script working correctly
					--
					-- pest_cmd = "~/.config/nvim/bin/pest.sh",
					--
					-- results_path = function()
					-- 	return "storage/app"
					-- end,
				}),
				-- TODO: Figure out how to get tests running in docker
				require("neotest-phpunit")({}),
			},
		})
	end,
}
