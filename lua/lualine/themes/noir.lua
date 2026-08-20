local P = require("noir.palette").get(vim.g.noir_variant or "pure_black")

local M = {}

M.normal = {
	a = { bg = P.visual, fg = P.fg, gui = "bold" },
	b = { bg = P.bg, fg = P.comment },
	c = { bg = P.bg, fg = P.fg },
	x = { bg = P.bg, fg = P.fg },
	y = { bg = P.bg, fg = P.fg },
	z = { bg = P.bg, fg = P.accent },
}

M.insert = {
	a = { bg = P.accent, fg = P.bg, gui = "bold" },
	b = { bg = P.bg, fg = P.accent },
	c = { bg = P.bg, fg = P.fg },
	x = { bg = P.bg, fg = P.fg },
	y = { bg = P.bg, fg = P.fg },
	z = { bg = P.bg, fg = P.accent },
}

M.visual = {
	a = { bg = P.comment, fg = P.bg, gui = "bold" },
	b = { bg = P.bg, fg = P.comment },
	c = { bg = P.bg, fg = P.fg },
	x = { bg = P.bg, fg = P.fg },
	y = { bg = P.bg, fg = P.fg },
	z = { bg = P.bg, fg = P.accent },
}

M.replace = {
	a = { bg = P.string, fg = P.bg, gui = "bold" },
	b = { bg = P.bg, fg = P.string },
	c = { bg = P.bg, fg = P.fg },
	x = { bg = P.bg, fg = P.fg },
	y = { bg = P.bg, fg = P.fg },
	z = { bg = P.bg, fg = P.accent },
}

M.command = {
	a = { bg = P.keyword, fg = P.bg, gui = "bold" },
	b = { bg = P.bg, fg = P.keyword },
	c = { bg = P.bg, fg = P.fg },
	x = { bg = P.bg, fg = P.fg },
	y = { bg = P.bg, fg = P.fg },
	z = { bg = P.bg, fg = P.accent },
}

M.terminal = M.command

M.inactive = {
	a = { bg = P.bg, fg = P.comment },
	b = { bg = P.bg, fg = P.comment },
	c = { bg = P.bg, fg = P.comment },
	x = { bg = P.bg, fg = P.comment },
	y = { bg = P.bg, fg = P.comment },
	z = { bg = P.bg, fg = P.comment },
}

return M
