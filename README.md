# conventional.vim

A simple plugin that attempts to add conventional commit support to vim.

## Installation

Install with your favorite vim plugin manager. For example using plug:
```vim
Plug 'displeased/conventional.vim'
```

To leverage vim-plug's dynamic plugin loading, you can set `conventional.vim`
to only activate when editing git commits:
```vim
Plug 'displeased/conventional.vim', { 'for': 'gitcommit' }
```

## License

This project is licensed under the MIT License - see LICENSE for more details.
