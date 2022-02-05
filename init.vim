  " _____   ______   ____    ____    _____    ______   _______              _______   ______   _        ______   ______   ______ 
 " |_   _| |___  /  / __ \  |  _ \  |  __ \  |  ____| |__   __|     /\     |__   __| |  ____| | |      |____  | |____  | |____  |
  "  | |      / /  | |  | | | |_) | | |__) | | |__       | |       /  \       | |    | |__    | |          / /      / /      / / 
  "  | |     / /   | |  | | |  _ <  |  _  /  |  __|      | |      / /\ \      | |    |  __|   | |         / /      / /      / /  
  " _| |_   / /__  | |__| | | |_) | | | \ \  | |____     | |     / ____ \     | |    | |____  | |____    / /      / /      / /   
 " |_____| /_____|  \____/  |____/  |_|  \_\ |______|    |_|    /_/    \_\    |_|    |______| |______|  /_/      /_/      /_/    
                                                                                                                              
  "                      , _                                  _____                                                       
  " _,   |)    _,      /|/ \   _             _,             () |    _   |\   ,   _|_   _    ,   |)     _         _       
 " / |   |/)  / |       |__/  / \_ /|/|/|   / |   /|/|         |   / \_ |/  / \_  |   / \_ / \_ |/\   |/  |  |  |/  |  |_
 " \/|_/ | \/ \/|_/     | \_/ \_/   | | |_/ \/|_/  | |_/     (/    \_/  |_/  \/   |_/ \_/   \/  |  |/ |_/  \/|/ |_/  \/  
  "                                                                                                         (|          
  "
  "                                                                                                         https://github.com/IZOBRETATEL777

" Download vimplug if necessary
if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute "!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.config/nvim/plugged')

" Nodejs extention for NVIM
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Snippet pack
Plug 'honza/vim-snippets'

" C# engine
Plug 'OmniSharp/omnisharp-vim'

" Extended language support
Plug 'sheerun/vim-polyglot'

" Icon pack
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-signify'

" Animantions
Plug 'easymotion/vim-easymotion'
Plug 'psliwka/vim-smoothie'
Plug 'antoinemadec/FixCursorHold.nvim'

" Statusbar
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'

" File structure
Plug 'majutsushi/tagbar'

" File explorer
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'unkiwii/vim-nerdtree-sync'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Formatting stuff
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tmsvg/pear-tree'

" Commenting
Plug 'tpope/vim-commentary'

" Storing the last place and file
Plug 'farmergreg/vim-lastplace'
Plug 'mhinz/vim-startify'

" Fuzzy file finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Theme
Plug 'tribela/vim-transparent'
Plug 'rhysd/vim-color-spring-night'

call plug#end()

" Coc Plugins
let g:coc_global_extensions = ['coc-actions', 'coc-snippets', 'coc-spell-checker', 'coc-clangd', 'coc-java', 'coc-pyright', 'coc-omnisharp']

" Tab stuff
filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set textwidth=0

" Interface
set textwidth=0
set ruler laststatus=2 showcmd showmode
set fillchars+=vert:\ 
set number
syntax on
set ttyfast
colorscheme spring-night

" Command complition
set wildmode=longest,list,full wildmenu

" Enable mouse
set mouse=a
set guioptions+=a

" Necessary for lots of cool vim things
set nocompatible
set noshowmode
set termguicolors

" Automatically change the current directory
" set autochdir

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" NEERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
     \ quit | endif
autocmd FileType nerdtree setlocal nolist

let g:webdevicons_enable = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:webdevicons_enable_nerdtree = 1
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let g:NERDTreeAutoCenter = 1
let g:nerdtree_tabs_open_on_startup_for_diff = 1
let g:nerdtree_tabs_smart_startup_focus = 2
let g:nerdtree_tabs_focus_on_files = 1
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_sync_cursorline = 1
let g:webdevicons_enable_startify = 1
let g:startify_fortune_use_unicode = 1

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Make <tab> used for trigger completion, completion confirm, snippet expand and jump like VSCode.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <c-space> to open completion menu
inoremap <silent><expr> <c-space> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Auto indent file.
map <F7> :Format<CR>

" Create a session
function! GetUniqueSessionName()
  let path = fnamemodify(getcwd(), ':~:t')
  let path = empty(path) ? 'no-project' : path
  let branch = gitbranch#name()
  let branch = empty(branch) ? '' : '-' . branch
  return substitute(path . branch, '/', '-', 'g')
endfunction

autocmd User        StartifyReady silent execute 'SLoad '  . GetUniqueSessionName()
autocmd VimLeavePre *             silent execute 'SSave! ' . GetUniqueSessionName()

autocmd BufDelete * if empty(filter(tabpagebuflist(), '!buflisted(v:val)')) | Startify | endif

" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

" Statusbar
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

" Framerate
let g:cursorhold_updatetime = 100
let g:context_nvim_no_redraw =1

" Custom setup for filetypes
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango inoremap {{ {{  }}<left><left><left>
autocmd FileType htmldjango inoremap {% {%  %}<left><left><left>
autocmd FileType htmldjango inoremap {# {#  #}<left><left><left>
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType journal setlocal shiftwidth=2 tabstop=2 softtabstop=2

" FZF
" Allow closing fzf with esc
tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"
" FZF on ctrl+p
nmap <C-P> :FZF<CR>

" Tagbar
map <C-m> :Tagbar<CR>

