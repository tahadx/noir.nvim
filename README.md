# Noir

A dark Neovim colorscheme. Pure black background, warm grey text, muted teal
accents.

## Installation

Requires `nvim 0.9+`.

```lua
{
  "tahasadough/noir.nvim",
  priority = 1000,
  config = true,
  opts = {},
}
```

Then set the colorscheme:

```lua
vim.cmd.colorscheme("noir")
```

## Customization

All colors live in `lua/noir/palette.lua`. Tweak any value there and reload
with `:colorscheme noir`.

## Palette

| Role       | Hex     | Used for                       |
| ---------- | ------- | ------------------------------ |
| `bg`       | `#000000` | Background                    |
| `alt_bg`   | `#1c1c1c` | Float, cursorline, statusline |
| `fg`       | `#c1c1c1` | Foreground / property         |
| `comment`  | `#505050` | Comments, line numbers        |
| `constant` | `#aaaaaa` | Constants, numbers            |
| `func`     | `#888888` | Functions                     |
| `keyword`  | `#999999` | Keywords, statements          |
| `operator` | `#9b99a3` | Operators, delimiters         |
| `string`   | `#aa9988` | Strings                       |
| `type`     | `#777755` | Types                         |
| `visual`   | `#333333` | Visual selection, popup bg    |
| `accent`   | `#5f8787` | Accent, special, diagnostics  |

## Supported

- Treesitter highlighting
- LSP + diagnostics
- Git signs and diffs
- Telescope, NvimTree, Bufferline, cmp, Lualine

## License

MIT
