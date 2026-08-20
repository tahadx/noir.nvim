local M = {}

M.opts = { variant = "pure_black" }

function M.setup(opts)
	M.opts = vim.tbl_extend("force", M.opts, opts or {})
end

function M.load()
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.termguicolors = true
	vim.g.colors_name = "noir"
	vim.g.noir_variant = M.opts.variant

	require("noir.highlights").setup(M.opts.variant)
end

return M
