local colors = {
  fg     = '#eeffff',
  bg     = '#263238',
  blue   = '#82aaff',
  green  = '#9ECF6B',
  purple = '#c792ea',
  red1   = '#f07178',
  red2   = '#ff5370',
  yellow = '#ffcb6b',
  gray1  = '#314549',
  black  = '#16161E',
}

return {
  normal = {
    a = { fg = colors.bg, bg = colors.blue, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.gray1 },
    c = { fg = colors.fg, bg = colors.black },
  },
  insert = {
    a = { fg = colors.bg, bg = colors.green, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.gray1 },
  },
  visual = {
    a = { fg = colors.bg, bg = colors.purple, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.gray1 },
  },
  replace = {
    a = { fg = colors.bg, bg = colors.red1, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.gray1 },
  },
  inactive = {
    a = { fg = colors.fg, bg = colors.bg, gui = 'bold' },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.gray2 },
  },
}
