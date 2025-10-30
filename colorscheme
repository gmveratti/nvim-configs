return {
  "folke/tokyonight.nvim",
  opts = {
    style = "night", -- Garante que estamos no tokyonight 'night'

    on_highlights = function(hl, c)
      -- Cor personalizada definida por você
      local my_custom_bg = "#1e1e1e"

      -- 1. Fundo do editor principal
      hl.Normal = {
        fg = c.fg, -- Mantém a cor do texto (foreground) original
        bg = my_custom_bg, -- Define seu background personalizado
      }

      -- 2. Fundo de janelas "não focadas" (splits)
      hl.NormalNC = {
        fg = c.fg_dark, -- Texto um pouco mais apagado para janelas inativas
        bg = my_custom_bg,
      }

      -- 3. Fundo de janelas flutuantes (LSP, Telescope, etc.)
      hl.NormalFloat = {
        fg = c.fg,
        bg = my_custom_bg,
      }

      -- 4. Fundo do NvimTree
      -- (Usamos 'fg_dark' para o texto ficar um pouco menos "brilhante")
      hl.NvimTreeNormal = {
        fg = c.fg_dark,
        bg = my_custom_bg,
      }
    end,
  },
}
