local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "prettier",
        "null-ls.nvim",
        "stylua",
        "tsserver",
        "luaformatter",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        mappings = {
          i = {
            ["<esc>"] = function(...)
              require("telescope.actions").close(...)
            end,
          },
        },
      },
    },
  },
  {
    "github/copilot.vim",
    lazy = false,
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "folke/trouble.nvim",
    lazy = false,
    requires = {
      "kyazdani42/nvim-web-devicons",
      config = function()
        require "custom.configs.trouble"
      end,
    },
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup { disable_filetype = { "TelescopePrompt", "vim" } }
    end,
  },
  { "tpope/vim-fugitive", event = "BufRead" },
}
return plugins
