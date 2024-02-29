--[[
lvim is the global options object

Linters should be filled in as strings with either a global executable or a
path to an executable

Example configuration file can be found at:
~/.local/share/lunarvim/lvim/utils/installer/config.example.lua
]]

-- general
-- vim.opt.guifont = "FiraCode Nerd Font Mono:14"
vim.opt.foldmethod = "indent"
vim.opt.foldlevelstart = 6
vim.opt.relativenumber = true

lvim.log.level = "warn"
lvim.format_on_save.enabled = false

-- colorscheme
lvim.colorscheme = "visual_studio_code"

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

-- add your own keymapping
lvim.keys.visual_mode["ga"] = "<Plug>(EasyAlign)"
lvim.keys.normal_mode["ga"] = "<Plug>(EasyAlign)"

lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
local _, actions = pcall(require, "telescope.actions")

lvim.builtin.telescope.defaults.mappings = {
  -- for input mode
  i = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,
  },
  -- for normal mode
  n = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
  },
}

lvim.builtin.telescope = {
  defaults = { },
  pickers = {
    buffers   = { theme = "dropdown" },
    git_files = { theme = "dropdown" },
    live_grep = { theme = "ivy" },
  },
}

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
}

-- User Config for predefined plugins
-- disable builtin plugins
lvim.builtin.alpha.active       = true
lvim.builtin.breadcrumbs.active = false
lvim.builtin.dap.active         = false
lvim.builtin.indentlines.active = false
lvim.builtin.lir.active         = false
lvim.builtin.lualine.active     = true
lvim.builtin.nvimtree.active    = true
lvim.builtin.project.active     = true
lvim.builtin.terminal.active    = true

-- terminal
lvim.builtin.terminal.direction = 'horizontal'

-- bufferline
lvim.builtin.bufferline.options.color_icons = true
lvim.builtin.bufferline.options.show_tab_indicators = false

-- nvimtree
lvim.builtin.nvimtree.setup.view.side = "right"
lvim.builtin.nvimtree.setup.view.width = 40
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.nvimtree.setup.renderer.icons.webdev_colors = true

-- lir
lvim.builtin.lir.show_hidden_files = true
lvim.builtin.lir.ignore = {
  ".DS_Store",
  ".bundle",
  ".git",
  -- ".idea",
  -- "node_modules"
}

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "css",
  "elixir",
  "javascript",
  "json",
  "lua",
  "python",
  "ruby",
  "rust",
  "toml",
  "tsx",
  "typescript",
  "vimdoc",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

-- generic LSP settings
-- -- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- require("lvim.lsp.manager").setup("solargraph", {
--   cmd = { "/Users/andrebras/.asdf/shims/solargraph", "stdio" }
-- })

-- Additional Plugins
lvim.plugins = {
  { "junegunn/vim-easy-align" },
  { "tpope/vim-fugitive" },
  { "tpope/vim-surround" },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "tzachar/cmp-tabnine",
    build = "./install.sh",
    dependencies = "hrsh7th/nvim-cmp",
    event = "InsertEnter",
  },
  {
    "mcauley-penney/tidy.nvim",
    config = function()
      require("tidy").setup()
    end
  },

  -- themes --
  -- { 'Mofiqul/vscode.nvim' },
  { 'rose-pine/neovim' },
  {
    "askfiy/visual_studio_code",
    priority = 100,
    config = function()
      require("visual_studio_code").setup({mode = "light"});
      vim.cmd([[colorscheme visual_studio_code]]);
    end,
  },
}
