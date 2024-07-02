return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<c-\>]],
			-- direction = 'vertical' | 'horizontal' | 'tab' | 'float',
			direction = "float",
		})
	end,
}
