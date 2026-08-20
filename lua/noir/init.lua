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

	local variant = M.opts.variant
			or vim.g.noir_variant
		or "dawn"
	vim.g.noir_variant = variant

	require("noir.highlights").setup(variant)

	if vim.fn.exists("command") ~= 2 then
		vim.api.nvim_create_user_command("NoirVariant", function(cmd)
			local v = cmd.args
			if v ~= "pure_black" and v ~= "dawn" then
				vim.notify("Noir: valid variants are 'pure_black' and 'dawn'", vim.log.levels.ERROR)
				return
			end
			M.opts.variant = v
			vim.g.noir_variant = v
			vim.cmd("colorscheme noir")
			vim.notify("Noir: switched to " .. v)
		end, { nargs = 1, complete = function()
			return { "dawn", "pure_black" }
		end })
	end
end

return M
