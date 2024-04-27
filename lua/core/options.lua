-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

vim.cmd("let g:netrw_liststyle = 3")

-- line & line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true -- Enable highlighting of the current line

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = "a"

-- tabs & indentation
vim.opt.tabstop = 4        -- Number of spaces to represent a tab character visually (e.g., in normal mode)
vim.opt.softtabstop = 4    -- Number of spaces inserted when pressing the Tab key in insert mode, and affects backspace behavior
vim.opt.shiftwidth = 4     -- spaces for indent width
vim.opt.expandtab = false  -- expand tab to spaces
vim.opt.autoindent = true  -- copy indent from current line when starting new one
vim.opt.smartindent = true -- Insert indents automatically
vim.opt.breakindent = true -- Enable automatic indentation of wrapped lines

vim.opt.wrap = true        -- Enables text wrapping, lines will automatically wrap at the edge of the screen

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true  -- if you include mixed case in your search, assumes you want case-sensitive

vim.opt.cursorline = true

-- turn on termguicolors for tokyonight colorscheme to work
-- (have to use iterm2 or any other true color terminal)
vim.opt.termguicolors = true -- True color support
vim.opt.background = "dark"  -- colorschemes that can be light or dark will be made dark
vim.opt.signcolumn = "yes"   -- show sign column so that text doesn't shift

-- backspace
vim.opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position


-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- split windows
-- Configure how new splits should be opened
vim.opt.splitright = true -- split vertical window to the right
vim.opt.splitbelow = true -- split horizontal window to the bottom
vim.opt.splitkeep = "screen"

-- Autowrite
vim.opt.autowrite = true -- Enable auto write

-- Completion
vim.opt.completeopt = "menu,menuone,noselect"

-- Conceal
vim.opt.conceallevel = 2 -- Hide * markup for bold and italic, but not markers with substitutions

-- Confirmation
vim.opt.confirm = true -- Confirm to save changes before exiting modified buffer

-- Format options
vim.opt.formatoptions = "jcroqlnt" -- tcqj

-- Grep
vim.opt.grepformat = "%f:%l:%c:%m"
vim.opt.grepprg = "rg --vimgrep"

-- Incremental command
-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Statusline
vim.opt.laststatus = 3 -- Global statusline

-- Display whitespace characters like tabs and trailing spaces
-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true -- Show some invisible characters (tabs...)
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Popup settings
vim.opt.pumblend = 10  -- Popup blend
vim.opt.pumheight = 10 -- Maximum number of entries in a popup

-- Scrolling
-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Session options
vim.opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }

-- Round indent
vim.opt.shiftround = true -- Round indent

-- Short messages
vim.opt.shortmess:append({ W = true, I = true, c = true, C = true })

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Context columns
vim.opt.sidescrolloff = 8 -- Columns of context

-- Spellcheck language
vim.opt.spelllang = { "en" }

-- Timeout
if not vim.g.vscode then
	vim.opt.timeoutlen = 300 -- Lower than default (1000) to quickly trigger which-key
end

-- Undo
vim.opt.undofile = true
vim.opt.undolevels = 10000

-- Decrease update time
vim.opt.updatetime = 250

-- Virtual edit
vim.opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode

-- Wildmode
vim.opt.wildmode = "longest:full,full" -- Command-line completion mode

-- Minimum window width
vim.opt.winminwidth = 5

-- Fill characters
vim.opt.fillchars = {
	foldopen = "",
	foldclose = "",
	fold = " ",
	foldsep = " ",
	diff = "╱",
	eob = " ",
}

-- Smooth scroll (if supported)
if vim.fn.has("nvim-0.10") == 1 then
	vim.opt.smoothscroll = true
end

-- Folding
vim.opt.foldlevel = 99

-- Markdown indentation settings
vim.g.markdown_recommended_style = 0

-- Customize short messages
vim.opt.shortmess:append({ W = true, I = true, c = true, C = true })

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true
