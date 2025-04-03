![Toggle demo](https://github.com/soycarlo99/nvim-boolean-toggle/blob/main/trimmed-boolean-toggle.gif)
# Neovim Boolean Toggler and Incrementer

Neovim Boolean Toggler and Incrementer
A simple yet powerful Neovim plugin that enhances the functionality of the <C-a> key to intelligently toggle boolean values or increment numbers based on context.

## Features

- Smart Boolean Toggle: Instantly flip between true/false, True/False, and TRUE/FALSE when your cursor is on a boolean value
- Seamless Number Incrementing: Falls back to the standard <C-a> incrementing behavior for numbers
- Cursor Position Retention: Maintains cursor position after toggle operations
- Count Support: Fully supports Vim count prefix for increment operations (e.g., 5<C-a>)


## Installation

Using packer.nvim

```lua
use 'soycarlo99/nvim-boolean-toggle'
```

Using lazy.nvim

```lua
{
  'soycarlo99/nvim-boolean-toggle',
  config = true
}
```


## Usage

Simply position your cursor on:

- A boolean value (true, True, TRUE, false, False, FALSE) and press <C-a> to toggle it
- A number and press <C-a> to increment it (standard Vim behavior)
- Use a count before pressing <C-a> to increment a number by that amount (e.g., 5<C-a>)


## Configuration

The plugin works out of the box with default settings. If you want to customize the keybinding:

```lua
-- Use a different key for toggling
vim.keymap.set('n', '<leader>t', require('nvim-boolean-toggle').toggle_boolean_or_increment, 
  { desc = 'Toggle boolean or increment' })
```


## Why Use This Plugin?

- Streamlines Editing: No more manually typing out boolean values or using search and replace
- Context Aware: One keybinding handles both boolean toggling and number incrementing
- Coding Efficiency: Reduces keystrokes and mental overhead when working with boolean values


## License

MIT
