local M = {}

M.opts = { variant = "dawn" }

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

	if vim.fn.exists("command") ~= 2 then
		vim.api.nvim_create_user_command("NoirVariant", function(cmd)
			local variant = cmd.args
			if variant ~= "pure_black" and variant ~= "dawn" then
				vim.notify("Noir: valid variants are 'pure_black' and 'dawn'", vim.log.levels.ERROR)
				return
			end
			M.opts.variant = variant
			vim.cmd("colorscheme noir")
			vim.notify("Noir: switched to " .. variant)
		end, { nargs = 1, complete = function()
			return { "pure_black", "dawn" }
		end })
	end
end

return M
