return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' },
  opts = {
    completions = { blink = { enabled = true } },
  },
  config = function(_, opts)
      require('render-markdown').setup({
          heading = {
              sign = false,
              position = 'inline',
              width = 'block',
              left_margin = 0.5,
              left_pad = 0.2,
              right_pad = 0.2,
          },
          code = {
              width = 'block',
              left_margin = 0.5,
              left_pad = 0.2,
              right_pad = 0.2,
          },
    })
  end,
}

