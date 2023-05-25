local present, null_ls = pcall(require, "null-ls")

if not present then
	return
end

local b = null_ls.builtins.formatting
local l = null_ls.builtins.diagnostics
local c = null_ls.builtins.completion

local sources = {
	-- Lua
	b.stylua,
	l.luacheck,

	-- Prettier
	b.prettier,

	-- Meta formatters
	b.prettierd.with {
		filetypes = { "html", "yaml", "javascript", "typescript", "gql" },
	},

	l.shellcheck,
	c.spell,
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local on_attach = function(client, bufnr)
	if client.supports_method "textDocument/formatting" then
		vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = augroup,
			buffer = bufnr,
			callback = function()
				vim.lsp.buf.format({ bufnr = bufnr })
			end,
		})
	end
end

null_ls.setup {
	debug = true,
	sources = sources,
	on_attach = on_attach,
}

