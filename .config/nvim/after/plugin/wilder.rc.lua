local status, wilder = pcall(require, 'wilder')

wilder.setup({
  modes = { ':', '/', '?' },
  next_key = '<Tab>',
  prev_key = '<S-Tab>',
  accept_key = '<Down>',
  reject_key = '<Up>',
  -- ['*'] = {
  -- Enable the default wilder.vim search mode
  -- This is the default mode, so it's not strictly necessary to add it
  -- here, but it's shown here for demonstration purposes
  -- ['<C-p>'] = { message = 'Search mode', default = true },
  -- ['<C-f>'] = { message = 'Fuzzy mode' },
  -- ['<C-g>'] = { message = 'Grep mode' },
  -- ['<C-h>'] = { message = 'Command mode' },
  -- ['<C-l>'] = { message = 'Lines mode' },
  -- ['<C-b>'] = { message = 'Buffers mode' },
  -- ['<C-t>'] = { message = 'Tags mode' },
  -- ['<C-s>'] = { message = 'Spell mode' },
  -- ['<C-e>'] = { message = 'Extended mode' },
  -- },
})
wilder.set_option('renderer', wilder.renderer_mux({
  [':'] = wilder.popupmenu_renderer({
    highlighter = wilder.basic_highlighter(),
    pumblend = 0,
    -- left = '[Cmd]',
    max_height = 10,
    right = { ' ', wilder.popupmenu_scrollbar() },
  },
    wilder.popupmenu_border_theme({
      highlights = { border = 'FloatBorder' }, border = 'rounded'
    })
  ),
  ['/'] = wilder.wildmenu_renderer({
    highlighter = wilder.basic_highlighter(),
    left = '[Search] ',
    right = ' ',
  }),
  ['?'] = wilder.popupmenu_renderer({
    highlighter = wilder.basic_highlighter(),
    left = '[History] ',
    right = ' ',
  }),

}))