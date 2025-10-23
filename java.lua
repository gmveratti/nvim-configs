return {
  'nvim-java/nvim-java',
  dependencies = {
    'nvim-java/lua-async-await',
    'nvim-java/nvim-java-core',
    'nvim-java/nvim-java-test',
    'nvim-java/nvim-java-dap',
    'mfussenegger/nvim-dap',
    'neovim/nvim-lspconfig',
    'mfussenegger/nvim-jdtls',
  },
  config = function()
    -- Carrega a configuração principal do nvim-java
    require('java').setup()

    -- Configura o lspconfig para jdtls
    -- O nvim-java vai fornecer a configuração padrão para o jdtls
    require('lspconfig').jdtls.setup({})
  end,
}
