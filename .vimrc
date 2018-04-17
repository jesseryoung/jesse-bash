set pastetoggle=<F2>
set t_Co=256
set number
syntax enable
set background=dark
colorscheme gruvbox
set mouse=a

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif


let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_liststyle = 3
let g:netrw_list_hide='.*\.swp$'
let g:netrw_chgwin=2


"copy (write) highlighted text to .vimbuffer
vmap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
" paste from buffer
map <C-v> :r ~/.vimbuffer<CR>

