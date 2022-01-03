set nocompatible
filetype off
filetype plugin indent on
syntax on
set encoding=UTF-8

" === TRUECOLORS
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set t_8b=^[[48;2;%lu;%lu;%lum
set t_8f=^[[38;2;%lu;%lu;%lum
set termguicolors

" PLUGINS Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" themes 
Plugin 'joshdick/onedark.vim' 
Plugin 'gosukiwi/vim-atom-dark'  
Bundle 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'rakr/vim-one'

" nerdtree
Plugin 'preservim/nerdtree'

" better highlight
Plugin 'sheerun/vim-polyglot'

" Go
"Plugin 'tweekmonster/gofmt.vim'
"Plugin 'fatih/vim-go'

" line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" syntax
Plugin 'scrooloose/syntastic'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'kiteco/vim-plugin'

" cpp better highlight
Plugin 'octol/vim-cpp-enhanced-highlight'

" undotree
Plugin 'mbbill/undotree'

" rainbow brackets
Plugin 'frazrepo/vim-rainbow'

" auto pairs
Plugin 'jiangmiao/auto-pairs'

" multi cursor
Plugin 'mg979/vim-visual-multi'

" debugging Plugin
Plugin 'szw/vim-maximizer'

" fonts
Plugin 'lambdalisue/nerdfont.vim'

call vundle#end()


" ==== NERDTREE
let NERDTreeIgnore = ['__pycache__', '\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*$', '[a-zA-Z]*egg[a-zA-Z]*', '.DS_Store']

let NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0

nnoremap <F2> :NERDTreeToggle <CR>

" ==== SYNTASTIC
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

" ==== DEBUGER REMAPS
nnoremap <leader>m :MaximizerToggle!<CR>
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<CR>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
nnoremap <leader>de :call vimspector#Reset()<CR>

nnoremap <leader>dtcb :call vimspector#CleanLineBreakpoint()<CR>

nmap <leader>dl <Plug>VimspectorStepInto
nmap <leader>dj <Plug>VimspectorStepOver
nmap <leader>dk <Plug>VimspectorStepOut
nmap <leader>d_ <Plug>VimspectorRestart
nnoremap <leader>d<space> :call vimspector#Continue()<CR>

nmap <leader>drc <Plug>VimspectorRunToCursor
nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" ==== AIRLINE
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" ==== UNDOTREE
nnoremap <F5> :UndotreeToggle<CR>

" ==== VISUALS
colorscheme one
let g:one_allow_italics = 1 " I love italic for comments"

set completeopt+=noselect
set background=dark
set exrc
set autoindent
set tabstop=1
set shiftwidth=1
set expandtab
set autowrite
set smartindent
set cmdheight=2
set noshowmode
set mouse=ar
set ruler
set number
set noswapfile " disable the swapfile
set hlsearch " highlight all results
set ignorecase " ignore case in search
set incsearch " "show search results as you type

" Brief HELP
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
