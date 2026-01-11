local M = {}

function M.setup()
	local colors = {
		bg = "#1e1e2e",
		fg = "#cdd6f4",
		red = "#ff8080",
		green = "#a6e4a1",
		blue = "#89b4fa",
		gray = "#6c7086",
		purple = "#cba6f7",
		cyan = "#94e2d5",
		white = "#1e1e2e",
		black = "#000000",
		vis_back = "#404040",
		cmd = "#20FF00",
	}
	local highlights = {
		Normal = { fg = colors.fg, bg = colors.black },
		Comment = { fg = colors.gray, italic = true },
		Keyword = { fg = colors.purple, bold = true },
		String = { fg = colors.green },
		Number = { fg = colors.yellow },
		LineNr = { fg = colors.gray },
		CursorLine = { bg = colors.bg },
		StatusLine = { fg = colors.fg, bg = colors.gray },
		Visual = { bg = colors.vis_back },
		["@namespace"] = { fg = colors.cmd },

		["@variable"] = { fg = colors.red },
		["@keyword"] = { fg = colors.purple },

		TelescopeBorder = { fg = colors.red },
	}
	M.terminal_colors = {

		color0 = "#000000",
		color1 = "#7A1E1E",
		color2 = "#a83d3d",
		color3 = "#D14747",
		color4 = "#DE7E7E",
		color5 = "#E9A9A9",
		color6 = "#F4D6F4",
		color7 = "#FFFFFF",
		color8 = "#202020",
		color9 = "#909090",
		color10 = "#505050",
		color11 = "#989898",
		color12 = "#BEBEBE",
		color13 = "#DADADA",
		color14 = "#FFFFFF",
		color15 = "#FFFFFF",
	}
	vim.g.terminal_color_0 = "#000000"
	vim.g.terminal_color_1 = "#7A1E1E"
	vim.g.terminal_color_2 = "#a83d3d"
	vim.g.terminal_color_3 = "#D14747"
	vim.g.terminal_color_4 = "#DE7E7E"
	vim.g.terminal_color_5 = "#E9A9A9"
	vim.g.terminal_color_6 = "#F4D6F4"
	vim.g.terminal_color_7 = "#FFFFFF"
	vim.g.terminal_color_8 = "#202020"
	vim.g.terminal_color_9 = "#909090"
	vim.g.terminal_color_10 = "#505050"
	vim.g.terminal_color_11 = "#989898"
	vim.g.terminal_color_12 = "#BEBEBE"
	vim.g.terminal_color_13 = "#DADADA"
	vim.g.terminal_color_14 = "#FFFFFF"
	vim.g.terminal_color_15 = "#FFFFFF"

	for i = 0, 15 do
		local color_key = "color" .. i
		local color_val = M.terminal_colors[color_key]
		if color_val then
			-- Set the specific terminal highlight group
			vim.api.nvim_set_hl(0, "TerminalColor" .. i, { fg = color_val, bg = "NONE" })
		end
	end
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
