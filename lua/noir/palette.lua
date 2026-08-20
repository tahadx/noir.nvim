local M = {}

local variants = {
	pure_black = {
		bg = "#000000",
		alt_bg = "#1c1c1c",
		fg = "#c1c1c1",
		comment = "#505050",
		constant = "#aaaaaa",
		func = "#888888",
		keyword = "#999999",
		line = "#000000",
		number = "#aaaaaa",
		operator = "#9b99a3",
		property = "#c1c1c1",
		string = "#aa9988",
		type = "#777755",
		visual = "#333333",
		accent = "#8a9a7b",
		diag_red = "#8a9a7b",
		diag_blue = "#999999",
		diag_yellow = "#8a9a7b",
		diag_green = "#6e4c4c",
	},
	dawn = {
		bg = "#1c1c1c",
		alt_bg = "#333333",
		fg = "#c1c1c1",
		comment = "#505050",
		constant = "#aaaaaa",
		func = "#888888",
		keyword = "#999999",
		line = "#1c1c1c",
		number = "#aaaaaa",
		operator = "#9b99a3",
		property = "#c1c1c1",
		string = "#aa9988",
		type = "#777755",
		visual = "#505050",
		accent = "#8a9a7b",
		diag_red = "#8a9a7b",
		diag_blue = "#999999",
		diag_yellow = "#8a9a7b",
		diag_green = "#6e4c4c",
	},
}

function M.get(variant)
	variant = variant or "pure_black"
	return variants[variant] or variants["pure_black"]
end

return M
