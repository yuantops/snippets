""""""""""""""Basic settings"""""""""""""
set number  
syntax enable
syntax on

"" Tab and Backspace
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab

"" Encoding 
set encoding=utf-8

"" Searching
set ignorecase
set incsearch
set hlsearch
set showmatch

"" Format the status line
set laststatus=2                                      "Always show the status line
set statusline=
set statusline+=%7*\[%n]                              "buffernr
set statusline+=%1*\ %<%F\                            "File+path
set statusline+=%2*\ %y\                              "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}  "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\        "Encoding2
set statusline+=%4*\ %{&ff}\                          "FileFormat (dos/unix..) 
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\         "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                        "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                  "Modified? Readonly? Top/bot


""""""""""""""Machine dependent"""""""""""""

"" color scheme
colorscheme elflord

"" Markdown syntax highlight
au! Syntax markdown source ~/.vim/mkd.vim
au BufRead,BufNewFile *.md       set filetype=markdown
au BufRead,BufNewFile *.markdown set filetype=markdown
