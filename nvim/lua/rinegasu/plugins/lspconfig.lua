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

        nvim_lsp.ts_ls.setup {

        }

        local project_library_path = "/usr/lib/node_modules/@angular/language-server/"
        local cmd = { "ngserver", "--stdio", "--tsProbeLocations", project_library_path, "--ngProbeLocations",
            project_library_path }

        nvim_lsp.angularls.setup {
            cmd = cmd,
            on_new_config = function(new_config, new_root_dir)
                new_config.cmd = cmd
            end,
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

        nvim_lsp.html.setup {
            capabilities = capabilities,
        }

        nvim_lsp.cssls.setup {
            capabilities = capabilities,
            filetypes = {
                "css", "scss", "less"
            }
        }

        nvim_lsp.cssmodules_ls.setup {
            filetypes = {
                "javascript", "javascriptreact", "typescript", "typescriptreact",
            }
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

        nvim_lsp.gopls.setup {

        }

        nvim_lsp.markdown_oxide.setup {

        }
    end
}
