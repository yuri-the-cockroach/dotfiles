-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local lsp = require "lspconfig"
local coq = require "coq"
local opts = { noremap=true, silent=true }
-- vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
-- vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)
-- 
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
vim.cmd("let g:coq_settings = { 'display.icons.mode': 'none', 'keymap.jump_to_mark': v:null, 'keymap.bigger_preview': '<C-;>'}")
local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end
-- 
local lsp_flags = {
    -- This is the default in Nvim 0.7+
    debounce_text_changes = 150
}

lsp['pyright'].setup(coq.lsp_ensure_capabilities({
    on_attach = on_attach,
    flags = lsp_flags
}))

lsp['rust_analyzer'].setup(
coq.lsp_ensure_capabilities({
    on_attach = on_attach,
    flags = lsp_flags,
    -- Server-specific settings...
}))

lsp.ltex.setup(coq.lsp_ensure_capabilities({

    on_attach = on_attach,
    flags = lsp_flags,
    settings = {
        ltex = {
            completionEnabled = true,
            language = "en-US",
        }
    }
}))

lsp.ccls.setup(coq.lsp_ensure_capabilities({
    on_attach = on_attach,
    flags = lsp_flags,
}))

lsp.gopls.setup(coq.lsp_ensure_capabilities({
    on_attach = on_attach,
    flags = lsp_flags
}))
lsp.lua_ls.setup(coq.lsp_ensure_capabilities())
lsp.gdscript.setup(coq.lsp_ensure_capabilities())
lsp.cmake.setup(coq.lsp_ensure_capabilities())
vim.cmd("COQnow")

