# Neovim Ayu

[ayu-vim](https://github.com/ayu-theme/ayu-vim), a theme for Vim, reimplemented in lua, 
with inspirations from [material.nvim](https://github.com/marko-cerovac/material.nvim).

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

| Option                | Default     | Description                                                                             |
| --------------------- | ----------- | ----------------------------------------------------------------------------------------|
| ayu_disable_bg        | `false`     | Disable the setting of background color so that NeoVim can use your terminal background |
| ayu_borders           | `false`     | Enable the border between vertically split windows visible                              |
| ayu_contrast          | `false`     | Make sidebars and pop-up menus like nvim-tree and telescope have a different background |
| ayu_contrast_amount   | `-15`       | Contrast percentage for sidebars and popup menus (negative values to darken)            |
| ayu_italics_comments  | `false`     |                                                                                         |
| ayu_italics_string    | `false`     |                                                                                         |
| ayu_italics_keywords  | `false`     |                                                                                         |
| ayu_italics_functions | `false`     |                                                                                         |
| ayu_italics_variables | `false`     |                                                                                         |
