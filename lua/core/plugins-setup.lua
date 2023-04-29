local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- insert packer plugins between this line

  -- themes
  use 'navarasu/onedark.nvim'
  use { "bluz71/vim-nightfly-colors", as = "nightfly" }

  -- lualine
  use { 
      "nvim-lualine/lualine.nvim",
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- flutter plugins
  use {
    'akinsho/flutter-tools.nvim',
  }

  -- bufferline
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  -- autopair
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use "windwp/nvim-ts-autotag"


  -- indent color guide
  use "lukas-reineke/indent-blankline.nvim"

  -- show colors on code hexa
  use "norcalli/nvim-colorizer.lua"

  -- prettier
  use 'MunifTanjim/prettier.nvim'

  --  completion
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-nvim-lsp"

  -- formatter
  use "jose-elias-alvarez/null-ls.nvim"
  use "jayp0521/mason-null-ls.nvim"

  -- snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"
  use "saadparwaiz1/cmp_luasnip"


  -- rust tools
  use 'simrat39/rust-tools.nvim'

  -- lsp -> languages server protocols
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig"
  use {"glepnir/lspsaga.nvim", branch = "main"}
  use "onsails/lspkind.nvim"

  -- nvim tree for sidebar & telescope
  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"
  use "nvim-treesitter/nvim-treesitter"
  use {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.0",
    requires = {{"nvim-lua/plenary.nvim"}}
  }
  --end if plugis section

  if packer_bootstrap then
    require('packer').sync()
  end
end)
