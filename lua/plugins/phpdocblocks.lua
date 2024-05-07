return {
	"brett-griffin/phpdocblocks.vim",
	config = function()
		vim.keymap.set("n", "<leader>pd", "<Cmd>PHPDocBlocks<CR>", { desc = "[P]hp [D]ocblock" })
	end,
}
