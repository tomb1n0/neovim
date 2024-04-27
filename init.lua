-- Core Keymaps
require("core.keymaps")

-- Install Lazy for Plugin Management
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Setup Lazy, pointing it to our plugins folder.
-- This way each plugin can have it's own file, making configuration a bit easier
-- to manage in a modular way.
require("lazy").setup("plugins", {})

-- Colorscheme will often depend on a plugin, so load this after
require("core.colorscheme")
