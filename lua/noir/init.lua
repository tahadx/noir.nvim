local M = {}

function M.setup(_)
end

function M.load()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.termguicolors = true
	vim.g.colors_name = "noir"

	require("noir.highlights").setup()
end

return M
