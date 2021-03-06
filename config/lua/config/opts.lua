-- :help option
local options = {
    backup = false,                         -- creates a backup file
    swapfile = false,                       -- creates a swapfile
    writebackup = false,                    -- do no save backup before overwriting
    clipboard = "unnamedplus",              -- allows neovim to access the system clipboard
    cmdheight = 2,                          -- more space in the neovim command line for displaying messages
    completeopt = { "menuone", "noselect" },-- mostly just for cmp
    conceallevel = 0,                       -- so that `` is visible in markdown files
    fileencoding = "utf-8",                 -- the encoding written to a file
    hlsearch = true,                        -- highlight all matches on previous search pattern
    ignorecase = true,                      -- ignore case in search patterns
    mouse = "a",                            -- allow the mouse to be used in neovim
    pumheight = 10,                         -- pop up menu height
    showmode = false,                       -- we don't need to see things like -- INSERT -- anymore
    showtabline = 2,                        -- always show tabs
    smartcase = true,                       -- smart case
    smartindent = true,                     -- make indenting smarter again
    splitbelow = true,                      -- force all horizontal splits to go below current window
    splitright = true,                      -- force all vertical splits to go to the right of current window
    termguicolors = true,                   -- set term gui colors (most terminals support this)
    timeoutlen = 1000,                      -- time to wait for a mapped sequence to complete (in milliseconds)
    undofile = true,                        -- enable persistent undo
    updatetime = 300,                       -- faster completion (4000ms default)
    expandtab = true,                       -- convert tabs to spaces
    shiftwidth = 2,                         -- the number of spaces inserted for each indentation
    tabstop = 2,                            -- insert 2 spaces for a tab
    cursorline = true,                      -- highlight the current line
    number = true,                          -- set numbered lines
    relativenumber = false,                 -- set relative numbered lines
    numberwidth = 4,                        -- set number column width to 2 {default 4}
    tw = 100,
    signcolumn = "yes",                     -- always show the sign column, otherwise it would shift the text each time
    wrap = linebreaks,                            -- wrap lines at border
    scrolloff = 8,                          -- minimal number of lines to keep above and below the cursor 
    sidescrolloff = 8,                      -- the same but with colums
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd [[set iskeyword+=-]]                    -- Treats - joined words as one words
