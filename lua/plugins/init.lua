return {
  "LazyVim/LazyVim",

  { -- Autocompletion
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip", "saadparwaiz1/cmp_luasnip" },
  },

  { -- Highlight, edit, and navigate code
    "nvim-treesitter/nvim-treesitter",
    build = function()
      pcall(require("nvim-treesitter.install").update({ with_sync = true }))
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
  },

  -- Git related plugins
  "tpope/vim-fugitive",
  "tpope/vim-rhubarb",
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "▎" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
        untracked = { text = "▎" },
      },
    },
  },

  { "catppuccin/nvim", as = "catppuccin" },
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup()
    end,
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup()
    end,
  },

  {
    "nyoom-engineering/oxocarbon.nvim",
  },

  { "stevedylandev/flexoki-nvim", name = "flexoki" },

  -- {
  --   "lukas-reineke/indent-blankline.nvim", -- Add indentation guides even on blank lines
  --   opts = {
  --     indent = {
  --       char = "│",
  --       tab_char = "│",
  --     },
  --     scope = { enabled = false },
  --     exclude = {
  --       filetypes = {
  --         "help",
  --         "alpha",
  --         "dashboard",
  --         "neo-tree",
  --         "Trouble",
  --         "trouble",
  --         "lazy",
  --         "mason",
  --         "notify",
  --         "toggleterm",
  --         "lazyterm",
  --       },
  --     },
  --   },
  -- },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl",
    opts = {
      indent = {
        char = "│",
        tab_char = "│",
      },
      scope = { enabled = false },
    }
  },
  {
    "echasnovski/mini.indentscope",
    version = false, -- wait till new 0.7.0 release to put it back on semver
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      symbol = "│",
      options = { try_as_border = true },
    },
    init = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      })
    end,
  },
  {
    "echasnovski/mini.comment",
    event = "VeryLazy",
    opts = {
      options = {},
    },
  },
  "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically

  --   -- Fuzzy Finder (files, lsp, etc)
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "stevearc/aerial.nvim"},
    config = function ()
      require("telescope").load_extension("aerial")
    end
  },

  --   -- Fuzzy Finder Algorithm which dependencies local dependencies to be built. Only load if `make` is available
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make", cond = vim.fn.executable("make") == 1 },

  --   -- Bufferline
  {
    "akinsho/bufferline.nvim",
    tag = "v2.*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {},
  },
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("alpha").setup(require("alpha.themes.startify").config)
    end,
  },

  {
    "echasnovski/mini.pairs",
    event = "VeryLazy",
    opts = {},
  },

  "ray-x/go.nvim",

  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- optional, for file icons
    },
    config = function()
      require("nvim-tree").setup({})
    end,
  },

  -- Diff viewer
  { "sindrets/diffview.nvim" },

  -- Trouble nvim
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
      "sveltejs/language-tools",
      config = function()
        require('lspconfig').svelte.setup({})
      end,
  },

  {
    "stevearc/aerial.nvim",
    opts = function()
      local opts = {
        attach_mode = "global",
        backends = {
          ['_'] = {'lsp', 'treesitter'}
        },
        show_guides = true,
        layout = {
          resize_to_content = false,
          win_opts = {
            winhl = "Normal:NormalFloat,FloatBorder:NormalFloat,SignColumn:SignColumnSB",
            signcolumn = "yes",
            statuscolumn = " ",
          },
        },
        -- stylua: ignore
        guides = {
          mid_item   = "├╴",
          last_item  = "└╴",
          nested_top = "│ ",
          whitespace = "  ",
        },
        lazy = false
      }
      return opts
    end,
    keys = {
      { "<leader>cs", "<cmd>AerialToggle<cr>", desc = "Aerial (Symbols)" },
    },
  },
  {
    'stevearc/conform.nvim',
    opts = {},
  }
}
