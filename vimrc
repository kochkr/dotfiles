" ----------------------------------------------------------------------
" | General Settings                                                   |
" ----------------------------------------------------------------------

set nocompatible                    " Don't make Vim vi-compatibile.

syntax on                           " Enable syntax highlighting.

set autoindent                      " Copy indent to the new line.

set backspace=indent                " ┐
set backspace+=eol                  " │ Allow `backspace`
set backspace+=start                " ┘ in insert mode.

set encoding=utf-8 nobomb           " Use UTF-8 without BOM.

set ignorecase                      " Ignore case in search patterns.

set listchars=tab:▸\                " ┐
set listchars+=trail:·              " │ Use custom symbols to
set listchars+=eol:↴                " │ represent invisible characters.
set listchars+=nbsp:_               " ┘

set magic                           " Enable extended regexp.
" set mouse+=a                        " Enable mouse support.
set mousehide                       " Hide mouse pointer while typing.
set noerrorbells                    " Disable error bells.

set nojoinspaces                    " When using the join command,
                                    " only insert a single space
                                    " after a `.`, `?`, or `!`.

set nomodeline                      " Disable for security reasons.
                                    " https://github.com/numirias/security/blob/cf4f74e0c6c6e4bbd6b59823aa1b85fa913e26eb/doc/2019-06-04_ace-vim-neovim.md#readme

set nostartofline                   " Kept the cursor on the same column.
set number                          " Show line number.

if has('cmdline_info')
    set ruler                       " Show cursor position.
endif

set scrolloff=5                     " When scrolling, keep the cursor
                                    " 5 lines below the top and 5 lines
                                    " above the bottom of the screen.

set shortmess=aAItW                 " Avoid all the hit-enter prompts.

set showmode                        " Show current mode.

set smartcase                       " Override `ignorecase` option
                                    " if the search pattern contains
                                    " uppercase characters.

set tabstop=4                       " ┐
set softtabstop=4                   " │ Set global <TAB> settings.
set shiftwidth=4                    " │
set expandtab                       " ┘

set visualbell                      " ┐
set noerrorbells                    " │ Disable beeping and window flashing.
set t_vb=                           " ┘ https://vim.wikia.com/wiki/Disable_beeping

" Prevent `Q` in `normal` mode from entering `Ex` mode.
nmap Q <Nop>


" ----------------------------------------------------------------------
" | Local Settings                                                     |
" ----------------------------------------------------------------------

" Load local settings if they exist.
"
" [!] The following needs to remain at the end of this file in
"     order to allow any of the above settings to be overwritten
"     by the local ones.

if filereadable(glob("~/.vimrc.local"))
    source ~/.vimrc.local
endif
