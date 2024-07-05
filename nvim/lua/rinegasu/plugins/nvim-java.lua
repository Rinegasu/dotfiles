return {
    'nvim-java/nvim-java',
    dependencies = {
        'nvim-java/lua-async-await',
        'nvim-java/nvim-java-refactor',
        'nvim-java/nvim-java-core',
        'nvim-java/nvim-java-test',
        'nvim-java/nvim-java-dap',
        'MunifTanjim/nui.nvim',
        'neovim/nvim-lspconfig',
        'mfussenegger/nvim-dap',
        {
            'williamboman/mason.nvim',
            opts = {
                registries = {
                    'github:nvim-java/mason-registry',
                    'github:mason-org/mason-registry',
                },
            },
        }
    },
    config = function()
        require('java').setup {
            --  list of file that exists in root of the project
            root_markers = {
                'settings.gradle',
                'settings.gradle.kts',
                'pom.xml',
                'build.gradle',
                'mvnw',
                'gradlew',
                'build.gradle',
                'build.gradle.kts',
                '.git',
            },

            -- load java test plugins
            java_test = {
                enable = true,
            },

            -- load java debugger plugins
            java_debug_adapter = {
                enable = true,
            },

            jdk = {
                -- install jdk using mason.nvim
                auto_install = true,
            },

            notifications = {
                -- enable 'Configuring DAP' & 'DAP configured' messages on start up
                dap = false,
            },
        }
        require('lspconfig').jdtls.setup {}
    end
}
