set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" My bundles here:
"
" original repos on GitHub
Plugin 'godlygeek/tabular'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Townk/vim-autoclose'
Plugin 'tpope/vim-classpath'
Plugin 'vim-scripts/paredit.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-pathogen'
Plugin 'thoughtbot/vim-rspec'
"Plugin 'scrooloose/syntastic'
Plugin 'jgdavey/tslime.vim'

" Linting
Plugin 'w0rp/ale'

" Vim Tmux niceties...
Plugin 'benmills/vimux'

" Git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" Clojure
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-clojure-static'

" Elixir Bundles
Plugin 'elixir-lang/vim-elixir'
Plugin 'editorconfig/editorconfig-vim'

" Elm Bundles
Plugin 'lambdatoast/elm.vim'

" Erlang Bundles
Plugin 'edkolev/erlang-motions.vim'
Plugin 'vim-erlang/vim-erlang-runtime'
Plugin 'vim-erlang/vim-erlang-compiler'
Plugin 'vim-erlang/vim-erlang-omnicomplete'
Plugin 'vim-erlang/vim-erlang-tags'
Plugin 'vim-scripts/vim-erlang-skeleteons'

" Idris Bundles
Plugin 'idris-hackers/idris-vim'

" JavaScript Bundles
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx' " React JSX support

" PureScript Bundles
Plugin 'raichoo/purescript-vim'

" Reason Bundles
Plugin 'reasonml-editor/vim-reason'

" Ruby Bundles
Plugin 'vim-ruby/vim-ruby'

call vundle#end()


filetype plugin indent on " load the plugin and indent settings for the detected filetype
set exrc " allow project level vimrc files

set t_Co=256

syntax on

set encoding=utf-8
set history=500
set title
set number
set scrolloff=3
set laststatus=2                   " Status bar
set showcmd                        "Show (partial) command in the status line
set showmatch
set backspace=indent,eol,start     "allow backspacing over everything in insert mode
set autoindent                     " always set autoindenting on "
set background=dark
set showcmd                        " display incomplete commands
set backupdir=$HOME/.vim/backup
set directory=$HOME/.vim/backup    " Don't clutter my dirs up with swp and tmp files
set autoread
set noesckeys                      " Get rid of the delay when hitting esc! "
set shiftround                     " When at 3 spaces and I hit >>, go to 4, not 5.
set paste
set nofoldenable                   " Say no to code folding...  "
set grepprg=ag                     " Use Silver Searcher instead of grep
set ruler                          " show the cursor position all the time


nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Local Leader
"let maplocalleader = "\\"

"Syntastic
let g:syntastic_aggregate_errors = 1
let g:syntastic_javascript_checkers = ['jshint', 'jscs']


" Without setting this, ZoomWin restores windows in a way that causes
" equalalways behavior to be triggered the next time CommandT is used.
" This is likely a bludgeon to solve some other issue, but it works
set noequalalways

" Command-T configuration
let g:CommandTMaxHeight=20

" ZoomWin configuration
map <Leader><Leader> :ZoomWin<CR>

" CTags
map <Leader>crt :!ctags --extra=+f -R *<CR><CR>
map <C-\> :tnext<CR>

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif

  autocmd BufRead,BufNewFile *.erl,*.es.*.hrl,*.yaws,*.xrl set expandtab
  au BufNewFile,BufRead *.erl,*.es,*.hrl,*.yaws,*.xrl setf erlang
endif

" make uses real tabs
au FileType make set noexpandtab

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType erlang set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Unimpaired configuration
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" gist-vim defaults
if has("mac")
  let g:gist_clip_command = 'pbcopy'
elseif has("unix")
  let g:gist_clip_command = 'xclip -selection clipboard'
endif
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

" Use modeline overrides
set modeline
set modelines=10


" Default color scheme
let g:solarized_termtrans = 1
let g:solarized_termcolors=256
colorscheme solarized

" Turn off jslint errors by default
let g:JSLintHighlightErrorLine = 0

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" % to bounce from do to end etc.
runtime! macros/matchit.vim

" Settings for VimClojure
"let g:clj_hightlight_builtins=1 " Highlight Clojure's builtins
"let vimclojure#ParenRainbow=1       " Rainbow parentheses'!
"let vimclojure#WantNailgun = 1

let g:rbpt_max = 15
let g:rbpt_loadcmd_toggle = 0
let g:rbpt_colorpairs = [
    \ ['white',       'DarkOrchid3'],
    \ ['gray',        'SeaGreen3'],
    \ ['yellow',      'firebrick3'],
    \ ['blue',        'RoyalBlue3'],
    \ ['green',       'DarkOrchid3'],
    \ ['cyan',        'SeaGreen3'],
    \ ['magenta',     'RoyalBlue3'],
    \ ['red',         'DarkOrchid3'],
    \ ['brown',       'RoyalBlue3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['darkred',     'firebrick3'],
    \ ]

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

nmap <Enter> :nohlsearch<Enter>/<BS>

" set guifont=Inconsolata
"set guifont=Fira\ Code
set guifont=Hasklig

map <Leader>ah S<a href="" target="_blank" rel="noopener noreferrer"><CR>

" Run Commands in Tmux window
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>

"Marked App
nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>

" tmux setup with tslime for vim
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

" vim-rspec mappings
let g:rspec_command = 'call Send_to_Tmux("bundle exec rspec {spec}\n")'

map <leader>` :source ~/.vimrc<CR>
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_sign_column_always = 1


" Set this setting in vimrc if you want to fix files automatically on save.
let g:ale_fix_on_save = 1


" Idris mappings
let g:idris_indent_if = 3
let g:idris_indent_case = 5
let g:idris_indent_let = 4
let g:idris_indent_where = 6
let g:idris_indent_do = 3
let g:idris_indent_rewrite = 8

" JavaScript settings
let g:javascript_plugin_flow = 1
let g:javascript_plugin_jsdoc = 1
let g:jsx_ext_required = 0


" Map w!! to write readonly files
cmap w!! w !sudo tee % >/dev/null

au! BufWritePost .vimrc source %

