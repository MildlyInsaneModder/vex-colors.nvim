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
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
