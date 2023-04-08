local mason_status, mason = pcall(require, "mason")
if not mason_status then
    return
end


local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
    return
end


mason.setup()

mason_lspconfig.setup({
    ensure_installed = {
        "tsserver",
        "html",
        "cssls",
        "tailwindcss",
        "lua_ls",
        "emmet_ls",
        "clangd",
        "jdtls",
        "jedi_language_server",
        "pyre",
        "pyright",
        "sourcery",
        "pylsp",
        "ruff_lsp",
    },
})

