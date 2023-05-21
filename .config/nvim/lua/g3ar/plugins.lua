local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- Library/package installer
  use 'wbthomason/packer.nvim'
  use 'williamboman/mason.nvim'

  use { "ellisonleao/gruvbox.nvim" } -- neovim theme
  use 'nvim-lualine/lualine.nvim'    -- Statusline
  use 'nvim-lua/plenary.nvim'        -- Common utilities
  use 'onsails/lspkind-nvim'         -- vscode-like pictograms

  -- nvim-cmp completion source
  use { 'hrsh7th/nvim-cmp' }     -- Completion
  use { 'hrsh7th/cmp-nvim-lsp' } -- nvim-cmp source for neovim's built-in LSP
  use { 'hrsh7th/cmp-buffer' }   -- nvim-cmp source for buffer words
  use { 'hrsh7th/cmp-path' }     -- nvim-cmp source for path completion
  use { 'saadparwaiz1/cmp_luasnip' }
  use { 'L3MON4D3/LuaSnip',      -- snippets for various fil-types
    dependencies = { "rafamadriz/friendly-snippets" },
  }
  use { "rafamadriz/friendly-snippets" }

  -- LSP
  use { 'neovim/nvim-lspconfig' }
  use 'williamboman/mason-lspconfig.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'     -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'glepnir/lspsaga.nvim'                -- LSP UIs

  use 'tpope/vim-commentary'                -- comment handler
  use 'karb94/neoscroll.nvim'               -- smooth scrolling
  use 'MunifTanjim/prettier.nvim'           -- Prettier plugin for Neovim's built-in LSP client
  use 'wakatime/vim-wakatime'               -- Monitor coding time
  use 'liuchengxu/vista.vim'                -- View and search LSP symbols
  use "lukas-reineke/indent-blankline.nvim" -- indent lines
  use {
    'nvim-treesitter/nvim-treesitter',      -- highlighting, indentation, folding
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  vim.g.mkdp_browser = '/usr/bin/firefox'
  use 'akinsho/nvim-bufferline.lua'
  use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-treesitter/nvim-treesitter" }
    }
  }
  -- use 'github/copilot.vim'

  -- Git Functions
  use 'lewis6991/gitsigns.nvim'
  use { 'tpope/vim-fugitive', config = [[require('.fugitive')]] }
  use 'dinhhuy258/git.nvim' -- For git blame & browse
end)
