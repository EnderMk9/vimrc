local status_ok, nvim_lsp = pcall(require, "lspconfig")
if not status_ok then
	return
end

--require("config.lsp.lsp-install")
require("config.lsp.handlers").setup()

nvim_lsp.sumneko_lua.setup {
      on_attach = require("config.lsp.handlers").on_attach,
      capabilities = require("config.lsp.handlers").capabilities,
  }

nvim_lsp.ccls.setup {
      on_attach = require("config.lsp.handlers").on_attach,
      capabilities = require("config.lsp.handlers").capabilities,
      --init_options = require("config.lsp.settings.ccls"),
    }

nvim_lsp.pyright.setup {
      on_attach = require("config.lsp.handlers").on_attach,
      capabilities = require("config.lsp.handlers").capabilities,
      --settings = require("config.lsp.settings.pyright"),
    }

nvim_lsp.texlab.setup {
      on_attach = require("config.lsp.handlers").on_attach,
      capabilities = require("config.lsp.handlers").capabilities,
      --settings = require("config.lsp.settings.texlab"),
    }
