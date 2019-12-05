"run in vim mode
set nocompatible

"enable loading the plugin file for specific file types
filetype plugin on

"expand tabs into spaces
set expandtab

"auto-indent new lines
set autoindent

"return ending brackets to proper locations
set smartindent

"indentation level of soft-tabs
set softtabstop=4

"indentation leves of normal tabs
set tabstop=4

"how many columns to re-indent with << and >>
set shiftwidth=4

"show matching brackets
set showmatch

"show cursor position at all times
set ruler

"don't highlight the previous search term
set nohls

"turn on line numbering
set number

"turn on visual word wrapping
set wrap

"only break lines on 'breakat' characters
set linebreak

"turn on syntax highlighting
syntax on

"fix backspace
set backspace=indent,eol,start

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

Plug '/usr/local/opt/fzf'

" Initialize plugin system
call plug#end()

