return {
  -- Mason: installs external tools
  {
    "mason-org/mason.nvim",
    opts = {},
  },

  -- Mason-LSPConfig: installs + auto-enables LSP servers
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = {
	-- Lua
        "lua_ls",
	-- Python
        "basedpyright",
	-- [Java|Type]script
        "ts_ls",
	-- C[++]?
        "clangd",
	-- Markdown
        "marksman",
	-- neovim
        "vimls",
	-- json
        "jsonls",
      },
      automatic_enable = true,
    },
  },

  -- Mason-tool-installer: formatters, linters, non-LSP tools
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
	"stylua",
	"prettier",
	"black",
      },
      auto_update = true,
      run_on_start = true,
    },
  },

  -- Lazydev properly configures LuaLS for editing your Neovim config by lazily updating your workspace libraries.
  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },
}

