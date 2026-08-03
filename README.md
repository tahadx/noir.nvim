# Noir

A dark Neovim colorscheme. Pure black background, warm grey text, warm gold
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
| `accent`   | `#a89a72` | Accent, special, diagnostics  |

## Supported

- Treesitter highlighting
- LSP + diagnostics
- Git signs and diffs
- [blink.cmp](https://github.com/Saghen/blink.cmp) (menu, docs, signature help, all kind groups)
- [snacks.nvim](https://github.com/folke/snacks.nvim) (picker, explorer, dashboard, notifier, terminal, scratch, indent, zen)
- [noice.nvim](https://github.com/folke/noice.nvim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua), [bufferline](https://github.com/akinsho/bufferline.nvim)
- [harpoon](https://github.com/ThePrimeagen/harpoon)
- [flash.nvim](https://github.com/folke/flash.nvim)
- [mini.*](https://github.com/echasnovski/mini.nvim) (ai, icons, pairs, surround)
- [illuminate](https://github.com/RRethy/vim-illuminate)
- [treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [neotest](https://github.com/nvim-neotest/neotest)
- cmp (legacy), Lualine

## License

MIT
