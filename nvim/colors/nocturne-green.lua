-- ~/.config/nvim/colors/nocturne-green.lua
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.g.colors_name = "nocturne-green"

local c = {
  bg           = "#0f1613",
  bg_dark      = "#0b110e",
  bg_sidebar   = "#0d1411",
  bg_highlight = "#16211c",
  bg_status    = "#14261e",
  selection    = "#2c4c3e",
  fg           = "#a3d9b8",
  fg_sidebar   = "#8ab89e",
  fg_muted     = "#4c6e5d",
  fg_gutter    = "#3d5a4c",
  green        = "#68d391",
  green_str    = "#9ae6b4",
  green_var    = "#b2e0c6",
  purple       = "#b794f4",
  orange       = "#f6ad55",
  teal         = "#4fd1c5",
  blue         = "#63b3ed",
  red          = "#fc8181",
  punct        = "#6b8f7d",
}

local hl = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Osnovno sučelje (UI)
hl("Normal",         { fg = c.fg, bg = c.bg })
hl("NormalFloat",    { fg = c.fg, bg = c.bg_sidebar })
hl("FloatBorder",    { fg = c.green, bg = c.bg_sidebar })
hl("Cursor",         { fg = c.bg, bg = c.green })
hl("CursorLine",     { bg = c.bg_highlight })
hl("CursorLineNr",   { fg = c.green, bold = true })
hl("LineNr",         { fg = c.fg_gutter })
hl("Visual",         { bg = c.selection })
hl("Search",         { fg = c.bg, bg = c.green })
hl("IncSearch",      { fg = c.bg, bg = c.orange })
hl("StatusLine",     { fg = c.fg_sidebar, bg = c.bg_status })
hl("StatusLineNC",   { fg = c.fg_muted, bg = c.bg_dark })
hl("VertSplit",      { fg = c.bg_dark })
hl("WinSeparator",   { fg = c.bg_dark })
hl("Pmenu",          { fg = c.fg, bg = c.bg_sidebar })
hl("PmenuSel",       { fg = c.bg, bg = c.green, bold = true })
hl("TabLine",        { fg = c.fg_muted, bg = c.bg_dark })
hl("TabLineFill",    { bg = c.bg_dark })
hl("TabLineSel",     { fg = c.green, bg = c.bg, bold = true })
hl("MatchParen",     { fg = c.teal, bg = c.selection, bold = true })

-- Standardna sintaksa
hl("Comment",        { fg = c.fg_muted, italic = true })
hl("Keyword",        { fg = c.purple, bold = true })
hl("Statement",      { fg = c.purple, bold = true })
hl("Conditional",    { fg = c.purple, bold = true })
hl("Repeat",         { fg = c.purple, bold = true })
hl("StorageClass",   { fg = c.purple, bold = true })
hl("String",         { fg = c.green_str })
hl("Character",      { fg = c.green_str })
hl("Identifier",     { fg = c.green_var })
hl("Function",       { fg = c.green })
hl("Constant",       { fg = c.orange })
hl("Number",         { fg = c.orange })
hl("Boolean",        { fg = c.orange })
hl("Float",          { fg = c.orange })
hl("Type",           { fg = c.blue })
hl("Structure",      { fg = c.blue })
hl("Delimiter",      { fg = c.punct })
hl("Operator",       { fg = c.punct })
hl("Error",          { fg = c.red, bold = true })
hl("DiagnosticError",{ fg = c.red })
hl("DiagnosticWarn", { fg = c.orange })
hl("DiagnosticInfo", { fg = c.blue })
hl("DiagnosticHint", { fg = c.teal })

-- Treesitter podrška (za moderni Neovim)
hl("@comment",               { link = "Comment" })
hl("@keyword",               { link = "Keyword" })
hl("@keyword.function",      { fg = c.purple, bold = true })
hl("@keyword.return",        { fg = c.purple, bold = true })
hl("@string",                { link = "String" })
hl("@variable",              { fg = c.green_var })
hl("@variable.parameter",    { fg = c.green_var })
hl("@function",              { fg = c.green })
hl("@function.call",         { fg = c.green })
hl("@function.builtin",      { fg = c.green })
hl("@number",                { link = "Number" })
hl("@boolean",               { link = "Boolean" })
hl("@type",                  { link = "Type" })
hl("@type.builtin",          { fg = c.blue })
hl("@punctuation.bracket",   { fg = c.punct })
hl("@punctuation.delimiter", { fg = c.punct })
