# Noir

A dark Neovim colorscheme. Warm grey text, muted sage accents. Ships with
two background variants.

## Installation

Requires `nvim 0.9+`.

```lua
{
  "tahadx/noir.nvim",
  priority = 1000,
  config = true,
  opts = {},
}
```

Then set the colorscheme:

```lua
vim.cmd.colorscheme("noir")
```

## Variants

Noir ships with two background variants:

| Variant      | `bg`       | Description                        |
| ------------ | ---------- | ---------------------------------- |
| `pure_black` | `#000000`  | Default. Pure black. |
| `dawn`       | `#1c1c1c`  | Softer dark.                       |

Set the variant in your plugin opts:

```lua
{
  "tahadx/noir.nvim",
  priority = 1000,
  opts = { variant = "dawn" },
}
```

If no variant is set, `pure_black` is used.

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
| `accent`   | `#8a9a7b` | Accent, special, diagnostics  |

## License

MIT
