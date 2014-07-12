" 20140713 0014
" set encoding
set encoding=utf-8
set fileencodings=utf-8,big5

set t_Co=256
set showmode
syntax on
set hlsearch
set background=dark
set laststatus=2
set wildmenu " commend line auto complete
set scrolloff=5 " keep at least 5 lines above/below
set ruler
set cursorline
" set ic    " ignore case when searching
set bs=2  " enable backspace
set number
set tabstop=4
set shiftwidth=4
set autoindent
set smarttab
set smartindent
set autochdir
set listchars=tab:>\ 
set list
filetype on
filetype plugin on

set statusline=%4*%<\ %1*[%F]
set statusline+=%4*\ %5*[%{&encoding},  "encoding
set statusline+=%{&fileformat}]%m       "file format
set statusline+=%4*%=\ %6*%y%4*\ %3*%l%4*,\ %3*%c%4*\ \<\ %2*%P%4*\ \>

hi User1 ctermfg=cyan ctermbg=darkgray
hi User2 term=underline ctermfg=yellow ctermbg=darkgray
hi User3 term=underline ctermfg=yellow ctermbg=darkgray
hi User4 term=underline ctermfg=white ctermbg=darkgray
hi User5 ctermfg=green ctermbg=darkgray
hi User6 ctermfg=white ctermbg=darkgray

" hi TabLineFill ctermfg=Black ctermbg=Grey
hi TabLine ctermfg=Black ctermbg=Grey
hi TabLineSel ctermfg=White ctermbg=Black

map<F9> :!./%:t

function! Set_c_Prefs()
	map<F9>  :!gcc "%:t" -o "%:r.out" -Wall -Wshadow -O2 -Im && echo "===== compile done =====" && "./%:r.out"
	map<F10> :!gcc "%:t" -o "%:r.out" -Wall -Wshadow -O2 -Im
	map<F11> :!gcc "%:t" -o "%:r.out" -Wall -Wshadow -O2 -Im -g && valgrind --leak-check=full --log-file=%:r.vglog ./%:r.out
endfunction
function! Set_cpp_Prefs()
	map<F8> :!g++49 "%:t" -o "%:r.out" --std=c++11 -static -Wall -Wshadow -O2 -Im && echo "===== compile done =====" && "./%:r.out"
	map<F9> :!g++49 "%:t" -o "%:r.out" --std=c++11 -static -Wall -Wshadow -O2 -Im -DKEVINPTT && echo "===== compile done =====" && "./%:r.out"
	map<F10> :!g++49 "%:t" -o "%:r.out" --std=c++11 -static -Wall -Wshadow -O2 -Im -DKEVINPTT 
	"map<F9> :!g++ "%:t" -o "%:r.out" -Wall -Wshadow -O2 -Im -DKEVINPTT && echo "===== compile done =====" && "./%:r.out"
	"map<F10> :!g++ "%:t" -o "%:r.out" -Wall -Wshadow -O2 -Im -DKEVINPTT
	map<F11> :!g++ "%:t" -o "%:r.out" -Wall -Wshadow -O2 -Im -g && valgrind --leak-check=full --log-file=%:r.vglog ./%:r.out
endfunction
function! Set_pascal_Prefs()
	map<F9>  :!fpc "%:t" && echo "===== compile done =====" && "./%:r"
	map<F10> :!fpc "%:t"
	map<F11> :!fpc "%:t" && valgrind --leak-check=full --log-file=%:r.vglog ./%:r
endfunction

function! Set_web_Prefs()
	set tabstop=2
	set shiftwidth=2
	set listchars=tab:\|\ 
endfunction


autocmd filetype c call Set_c_Prefs()
autocmd filetype cpp call Set_cpp_Prefs()
autocmd filetype pascal call Set_pascal_Prefs()
autocmd filetype javascript,html,xml,html,xhtml call Set_web_Prefs()

inoremap jj <ESC> 

autocmd! BufNewFile * silent! 0r ~/.vim/skel/Template.%:e
