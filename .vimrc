if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

syntax on
" let g:airline_theme='onehalfdark'
" lightline
let g:lightline = { 'colorscheme': 'onehalfdark' }

set t_Co=256

colorscheme onehalfdark
let macvim_skip_colorscheme=1
filetype indent on
set title
set hlsearch
set nu
set autoindent
set cindent
set softtabstop=4
set shiftwidth=4
set tabstop=4
set fileencodings=utf8,euc-kr

set noshowmode
set noshowcmd
" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set laststatus=2
set cursorline
"highlight  CursorLineNr ctermbg=None ctermfg=None guifg=White
