set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"vim colors font
Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'

"GNU Debugger plugin
Plugin 'vim-scripts/Conque-GDB'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Syntastic is a syntax checking plugin
Plugin 'scrooloose/syntastic'

"The NERD tree allows you to explore your filesystem and to open files and
"directories.
Plugin 'scrooloose/nerdtree'

"A plugin of NERDTree showing git status flags.
Plugin 'Xuyuanp/nerdtree-git-plugin'

"YouCompleteMe is a fast, as-you-type, fuzzy-search code completion engine for
"Vim.
"Plugin 'valloric/youcompleteme'

"A Vim plugin which shows a git diff in the 'gutter' (sign column).
Plugin 'airblade/vim-gitgutter'

"Lean & mean status/tabline for vim that's light as air.
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"This plugin causes all trailing whitespace characters (spaces and tabs) to be
"highlighted.
Plugin 'ntpeters/vim-better-whitespace'

"Comment functions so powerful—no comment necessary.
Plugin 'scrooloose/nerdcommenter'

"Tagbar is a Vim plugin that provides an easy way to browse the tags of the
"current file and get an overview of its structure.
Plugin 'majutsushi/tagbar'

"This plugin is used for displaying thin vertical lines at each indentation
"level for code indented with spaces.
Plugin 'yggdroot/indentline'

Plugin 'shougo/vimshell.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
"Plugin heare

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable
if has('gui_running')
	set background=light
else
	set background=dark
endif
"set background=light
"set term=xterm-256color

"let g:solarized_termcolors=256
"let g:solarized_termtrans =1
"let g:solarized_visibility="normal"
"colorscheme solarized

"colorscheme molokai
"colorscheme Tomorrow-Night-Bright
colorscheme Tomorrow-Night-Eighties
"colorscheme Tomorrow-Night-Blue
"colorscheme Tomorrow-Night
"colorscheme Tomorrow
"
"
"Syntastic Recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"open a NERDTree automatically when vim starts up
"autocmd vimenter * NERDTree
"CTRL+n to close/open NERDtree
map <C-n> :NERDTreeToggle<CR>
"close file and auto close NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"open NERDTree automatically when vim starts up on opening a directory
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p


let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_global_ycm_extra_conf = './.ycm_extra_conf.py'

"setting solarized airlind theme
"let g:airline_theme='solarized'
let g:airline_theme='tomorrow'
"let g:solarized_base16 = 1
"let g:airline_solarized_normal_green = 1
"let g:airline_solarized_dark_inactive_border = 1

" certain number of spaces are allowed after tabs, but not in between
"   " this algorithm works well for /** */ style comments in a tab-indented
"   file
let g:airline#extensions#whitespace#mixed_indent_algo = 1

"set runtimepath^=~/.vim/bundle/ctrlp.vim

"Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1

" the F8 key will toggle the Tagbar window
nmap <F8> :TagbarToggle<CR>

"IndentLine setting intdented with tab
set list lcs=tab:\|\ "(here is a space)
