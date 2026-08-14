local Highlight = require("gruber-darker.highlight")
local gruber_hl = require("gruber-darker.highlights.colorscheme").highlights
local lsp_hl = require("gruber-darker.highlights.lsp").highlights

---@type HighlightsProvider
local M = {
	highlights = {},
}

function M.setup()
	for _, value in pairs(M.highlights) do
		value:setup()
	end
end

M.highlights.compile_mode_command_output = Highlight.new("CompileModeCommandOutput", { link = lsp_hl.diagnostic_info })
M.highlights.compile_mode_warning = Highlight.new("CompileModeWarning", { link = lsp_hl.diagnostic_warn })
M.highlights.compile_mode_error = Highlight.new("CompileModeError", { link = lsp_hl.diagnostic_error })

M.highlights.compile_mode_message_row = Highlight.new("CompileModeMessageRow", { link = gruber_hl.yellow })
M.highlights.compile_mode_message_col = Highlight.new("CompileModeMessageCol", { link = gruber_hl.green })

return M
