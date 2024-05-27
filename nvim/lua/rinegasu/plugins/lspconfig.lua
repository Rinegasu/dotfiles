return {
    'neovim/nvim-lspconfig',
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    config = function()
        local nvim_lsp = require('lspconfig');

        local on_attach = function(client, bufnr)
            -- formatting
            if client.server_capabilities.documentFormattingProvider then
                vim.api.nvim_command [[augroup Format]]
                vim.api.nvim_command [[autocmd! * <buffer>]]
                vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
                vim.api.nvim_command [[augroup END]]
            end
        end

        nvim_lsp.tsserver.setup {

        }

        nvim_lsp.astro.setup {

        }

        nvim_lsp.intelephense.setup {}

        nvim_lsp.rust_analyzer.setup {

        }

        nvim_lsp.clangd.setup {
            cmd = { "clangd", "--background-index", "--clang-tidy", "--clang-tidy-checks=google" },
        }

        local capabilities = vim.lsp.protocol.make_client_capabilities();
        capabilities.textDocument.completion.completionItem.snippetSupport = true;

        nvim_lsp.jdtls.setup {

        }

        nvim_lsp.html.setup {
            capabilities = capabilities,
        }

        nvim_lsp.cssls.setup {
            capabilities = capabilities,
        }

        nvim_lsp.cssmodules_ls.setup {
        }

        nvim_lsp.tailwindcss.setup {}

        nvim_lsp.lua_ls.setup {
            on_attach = on_attach,
            settings = {
                Lua = {
                    runtime = {
                        version = 'LuaJIT',
                    },
                    diagnostics = {
                        globals = {
                            'vim'
                        },
                    },

                    workspace = {
                        -- Make the server aware of Neovim runtime files
                        library = vim.api.nvim_get_runtime_file("", true),
                        checkThirdParty = false,
                    }
                }
            }
        }
    end
}
