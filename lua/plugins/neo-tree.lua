return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	cmd = "Neotree",
	keys = {
		{ "\\", ":Neotree reveal<CR>", { desc = "NeoTree reveal" } },
	},
	opts = {
		filesystem = {
			follow_current_file = {
				enabled = true, -- This will find and focus the file in the active buffer every time
				--               -- the current file is changed while the tree is open.
				leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
			},
			filtered_items = {
				visible = true,
				show_hidden_count = true,
				hide_dotfiles = true,
				hide_gitignored = true,
				hide_by_name = {
					-- '.git',
					-- '.DS_Store',
					-- 'thumbs.db',
				},
				never_show = {},
			},
			window = {
				mappings = {
					["\\"] = "close_window",
				},
			},
		},
	},
}
