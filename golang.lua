-- Salve este arquivo como lua/plugins/go.lua

return {
  'ray-x/go.nvim',
  dependencies = {
    'ray-x/guihua.lua',
    'neovim/nvim-lspconfig',
    'nvim-treesitter/nvim-treesitter',
  },

  config = function()
    -- Opções do plugin
    local plugin_options = {
      -- lsp_keymaps = false,
    }
    
    -- Chama o setup
    require('go').setup(plugin_options)

    -- Autocmd para formatar
    local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", { clear = true })

    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*.go",
      group = format_sync_grp,
      callback = function()
        local success, err = pcall(require('go.format').goimports)
        if not success then
          vim.notify_once("goimports falhou: " .. err, vim.log.levels.WARN)
        end
      end,
    })
  end,

  event = {"CmdlineEnter"},
  
  ft = {"go", 'gomod'},
  
  build = ':lua require("go.install").update_all_sync()'
}
