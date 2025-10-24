local M = {}

function M.setup()
	local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

	parser_config.dlp = {
		install_info = {
			url = "https://github.com/zogrethrow/dlp.nvim",
			files = { "parser/parser.c" },
			branch = "main",
		},
		filetype = "dlp",
	}

	vim.filetype.add({
		extension = {
			dlp = "dlp",
		},
	})
end

return M
