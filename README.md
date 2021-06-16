# Neovim Ayu

A theme for Neovim reimplemented in lua from [ayu-vim](https://github.com/ayu-theme/ayu-vim).

## Screenshots

![dark](https://raw.githubusercontent.com/CantoroMC/ayu-nvim/screenshots/screenshots/dark.png)

![mirage](https://raw.githubusercontent.com/CantoroMC/ayu-nvim/screenshots/screenshots/mirage.png)

![light](https://raw.githubusercontent.com/CantoroMC/ayu-nvim/screenshots/screenshots/light.png)

## Configuration

The theme contains three color variants: `light`, `mirage` and `dark`.

It will respect your `background` (see `:h background`) setting to choose between `dark` and `light` variants.

To use `mirage` variant instead of `dark` for dark background you should specify the following anywhere in your configuration:

```lua
vim.g.ayu_mirage = true
```

| Option              | Default     | Description                                                                             |
| --------------------| ----------- | ----------------------------------------------------------------------------------------|
| ayu_disable_bg      | `false`     | Disable the setting of background color so that NeoVim can use your terminal background |
| ayu_borders         | `false`     | Enable the border between verticaly split windows visible                               |
| ayu_contrast        | `true`      | Make sidebars and popup menus like nvim-tree and telescope have a different background  |
| ayu_contrast_amount | `-30`       | Contrast percentage for sidebars and popup menus (negative values to darken)            |
| ayu_italic_comments | `false`     | Make comments italic                                                                    |
| ayu_italic_string   | `false`     | Make strings and chars italic                                                           |
