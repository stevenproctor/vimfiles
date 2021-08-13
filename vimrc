" For a paranoia.
" Normally `:set nocp` is not needed, because it is done automatically
" when .vimrc is found.
if &compatible
  " `:set nocp` has many side effects. Therefore this should be done
  " only when 'compatible' is set.
  set nocompatible
endif

filetype plugin indent on " load the plugin and indent settings for the detected filetype

" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()

" let Vundle manage Vundle
" required!
" Plugin 'gmarik/Vundle.vim'

" function! PackInit() abort
"   packadd minpac
"
"   " minpac is loaded.
"   call minpac#init()
"   call minpac#add('k-takata/minpac', {'type': 'opt'})
"
"   " Additional plugins here.
"   call minpac#add('airblade/vim-gitgutter') " Git
"   " call minpac#add('altercation/vim-colors-solarized') "Solarized
"   call minpac#add('clojure-vim/vim-jack-in') " Conjure support - jack-in with nrepl dependencies
"   call minpac#add('dense-analysis/ale') " Linting
"   call minpac#add('editorconfig/editorconfig-vim')
"   call minpac#add('elixir-lang/vim-elixir') " Elixir
"   call minpac#add('ElmCast/elm-vim') " Elm
"   " call minpac#add('guns/vim-clojure-static') " Clojure
"   "" call minpac#add('guns/vim-sexp') " Lisps
"   call minpac#add('jgdavey/tslime.vim', {'branch': 'main'}) " Send to Tmux
"   call minpac#add('jiangmiao/auto-pairs') " backets, parens, and quotes in pairs
"   call minpac#add('hashivim/vim-terraform') " Terraform
"   call minpac#add('kovisoft/paredit')
"   call minpac#add('leafgarland/typescript-vim') " TypeScript
"   call minpac#add('lifepillar/vim-solarized8') " Solarized
"   call minpac#add('luochen1990/rainbow')
"   call minpac#add('idris-hackers/idris-vim') " Idris
"   call minpac#add('mxw/vim-jsx') " React JSX support
"   " call minpac#add('ncm2/float-preview.nvim') " autocomplete with preview
"   call minpac#add('neomake/neomake') " Linting/Make
"   call minpac#add('nvie/vim-flake8') " Python
"   call minpac#add('nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} )
"   call minpac#add('pangloss/vim-javascript') " JavaScript
"   call minpac#add('prabirshrestha/async.vim') " Vim/NeoVim async normalization
"   call minpac#add('prabirshrestha/asyncomplete.vim') " Language Server Protocol
"   call minpac#add('raichoo/purescript-vim') " PureScript
"   call minpac#add('reasonml-editor/vim-reason') " ReasonML
"   call minpac#add('skywind3000/asyncrun.vim') " :AsyncRun
"   call minpac#add('thecontinium/asyncomplete-conjure.vim')
"   " call minpac#add('Shougo/deoplete.nvim') " async completion
"   call minpac#add('thoughtbot/vim-rspec')
"   call minpac#add('tpope/vim-classpath')
"   call minpac#add('tpope/vim-dispatch') " Conjure support - jack-in with nrepl dependencies
"   " call minpac#add('tpope/vim-fireplace') " Clojure
"   call minpac#add('tpope/vim-fugitive') " Git
"   call minpac#add('tpope/vim-git') " Git Commit Message
"   call minpac#add('tpope/vim-pathogen')
"   "" call minpac#add('tpope/vim-sexp-mappings-for-regular-people')
"   call minpac#add('tpope/vim-surround')
"   call minpac#add('tpope/vim-repeat')
"   call minpac#add('tpope/vim-unimpaired')
"   call minpac#add('tpope/vim-vinegar')
"   call minpac#add('vim-erlang/erlang-motions.vim') " Erlang
"   call minpac#add('vim-erlang/vim-erlang-runtime') " Erlang
"   call minpac#add('vim-erlang/vim-erlang-compiler') " Erlang
"   call minpac#add('vim-erlang/vim-erlang-omnicomplete') " Erlang
"   call minpac#add('vim-erlang/vim-erlang-tags') " Erlang
"   call minpac#add('vim-erlang/vim-erlang-skeletons') " Erlang
"   call minpac#add('vim-ruby/vim-ruby') " Ruby
"   call minpac#add('vim-syntastic/syntastic')
"   call minpac#add('vim-jp/syntax-vim-ex')
"   call minpac#add('tsandall/vim-rego') " Rego
"
"   " call minpac#add('prabirshrestha/vim-lsp') " Language Server Protocol
"   " call minpac#add('rhysd/vim-lsp-ale') " vim-lsp + ALE
"
"   " NeoVim only plugins
"   if has('nvim')
"     call minpac#add('Olical/aniseed', { 'tag': 'v3.20.0' })
"     call minpac#add('Olical/conjure') " Clojure
"     call minpac#add('Olical/fennel.vim') " Fennel
"     call minpac#add('radenling/vim-dispatch-neovim') " Clojure
"
"     call minpac#add('neovim/nvim-lspconfig') " NeoVim  lsp config
"     call minpac#add('kabouzeid/nvim-lspinstall') " NeoVim lsp server installs
"   else
"     call minpac#add('mattn/vim-lsp-settings') " Generic LSP Server install and settings for all languages
"     call minpac#add('prabirshrestha/asyncomplete-lsp.vim') " Language Server Protocol
"     call minpac#add('prabirshrestha/vim-lsp') " Language Server Protocol
"     call minpac#add('rhysd/vim-lsp-ale') " vim-lsp + ALE
"   endif
" endfunction
"
" " Define user commands for updating/cleaning the plugins.
" " Each of them loads minpac, reloads .vimrc to register the
" " information of plugins, then performs the task.
" command! PackUpdate call PackInit() | call minpac#update('', {'do': 'call minpac#status()'})
" command! PackClean  call PackInit() | call minpac#clean()
" command! PackStatus packadd minpac | call minpac#status()

" My bundles here:
"
" original repos on GitHub
"   Plugin 'godlygeek/tabular'
"   Plugin 'kana/vim-textobj-user'
"   Plugin 'nelstrom/vim-textobj-rubyblock'
"   Plugin 'altercation/vim-colors-solarized'
"   Plugin 'Townk/vim-autoclose'
"
"   " Vim Tmux niceties...
"   Plugin 'benmills/vimux'



" set path+=**
" set wildmenu
" set exrc " allow project level vimrc files
" set secure


" set t_Co=256

" syntax on

" set encoding=utf-8
" set history=500
" set title
" set number
" set scrolloff=3
" set laststatus=2                   " Status bar
" set showcmd                        "Show (partial) command in the status line
" set showmatch
" set backspace=indent,eol,start     "allow backspacing over everything in insert mode
" set autoindent                     " always set autoindenting on "
" set background=dark
" set showcmd                        " display incomplete commands
" set backupdir=$HOME/.vim/backup
" set directory=$HOME/.vim/backup    " Don't clutter my dirs up with swp and tmp files
" set autoread
" " set noesckeys                      " Get rid of the delay when hitting esc! "
" set shiftround                     " When at 3 spaces and I hit >>, go to 4, not 5.
" " set nofoldenable                   " Say no to code folding...  "
" set grepprg=ag                     " Use Silver Searcher instead of grep
" set ruler                          " show the cursor position all the time
" set tags=tags
" set updatetime=300                 " per coc.vim for diagnostic messages
" set signcolumn=auto:1-3
" set cmdheight=2                    " Better display for messages
" set shortmess+=c                   " don't give |ins-completion-menu| messages.
" set splitbelow                     " open horizontal splits at the bottom
" set splitright                     " open vertical splits to the right
" set termguicolors                  " support true color

" set undodir=~/.vim/undo
" set undofile "Maintain undo history between sessions
" set undolevels=1000
" set undoreload=10000


" nnoremap <C-e> 3<C-e>
" nnoremap <C-y> 3<C-y>
"
" Whitespace stuff
" set nowrap
" set tabstop=2
" set shiftwidth=2
" set softtabstop=2
" set expandtab
" set list listchars=tab:➥\ ,trail:·

" Searching
" set hlsearch
" set incsearch
" set ignorecase
" set smartcase

" Tab completion
" set wildmode=list:longest,list:full
" set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" " Insert Date
" :nnoremap <F5> "=strftime("%F")<CR>p
" :inoremap <F5> <C-R>=strftime("%F")<CR>

" Local Leader
"let maplocalleader = "\\"

"Syntastic
"let g:syntastic_aggregate_errors = 1
"let g:syntastic_javascript_checkers = ['jshint', 'jscs']
"let g:syntastic_ruby_checkers = ['rubocop']


" Without setting this, ZoomWin restores windows in a way that causes
" equalalways behavior to be triggered the next time CommandT is used.
" This is likely a bludgeon to solve some other issue, but it works
" set noequalalways

" Command-T configuration
" let g:CommandTMaxHeight=20

" ZoomWin configuration
" map <Leader><Leader> :ZoomWin<CR>

" nnoremap <leader>v :set paste<CR>imap <C-V> <C-O>:set paste<CR><C-R><C-R>+<C-O>:set nopaste<CR><esc>:set nopaste
" imap <C-V> <C-O>:set paste<CR><C-R><C-R>+<C-O>:set nopaste<CR>


" CTags
" command! MakeTags !ctags --exclude="@.ctagsignore" --extras=+f -R `pwd`
command! MakeTags AsyncRun ctags --exclude="@.ctagsignore" --extras=+f -R *<CR><CR>
map <Leader>crt :MakeTags<CR>
map <C-\> :tnext<CR>

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif


" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" " Unimpaired configuration
" " Bubble single lines
" nmap <C-Up> [e
" nmap <C-Down> ]e
" " Bubble multiple lines
" vmap <C-Up> [egv
" vmap <C-Down> ]egv

" set redrawtime=10000
""  gist-vim defaults
"" if has("mac")
""   let g:gist_clip_command = 'pbcopy'
"" elseif has("unix")
""   let g:gist_clip_command = 'xclip -selection clipboard'
"" endif
"" let g:gist_detect_filetype = 1
"" let g:gist_open_browser_after_post = 1

" Use modeline overrides
"" "set modeline
"" "set modelines=10


" Default color scheme
" let g:solarized_termtrans = 1
" let g:solarized_termcolors=256
" let g:solarized_termcolors= 16 | 256
" colorscheme solarized8

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" % to bounce from do to end etc.
"" runtime! macros/matchit.vim

" Settings for VimClojure
"let g:clj_hightlight_builtins=1 " Highlight Clojure's builtins
"let vimclojure#ParenRainbow=1       " Rainbow parentheses'!
"let vimclojure#WantNailgun = 1

"" let g:rbpt_max = 16
"" let g:rbpt_loadcmd_toggle = 0
"" let g:rbpt_colorpairs = [
""     \ ['white',       'DarkOrchid3'],
""     \ ['gray',        'SeaGreen3'],
""     \ ['yellow',      'firebrick3'],
""     \ ['blue',        'RoyalBlue3'],
""     \ ['green',       'DarkOrchid3'],
""     \ ['cyan',        'SeaGreen3'],
""     \ ['magenta',     'RoyalBlue3'],
""     \ ['red',         'DarkOrchid3'],
""     \ ['brown',       'RoyalBlue3'],
""     \ ['darkgray',    'DarkOrchid3'],
""     \ ['darkblue',    'firebrick3'],
""     \ ['darkgreen',   'RoyalBlue3'],
""     \ ['darkcyan',    'SeaGreen3'],
""     \ ['darkmagenta', 'DarkOrchid3'],
""     \ ['darkred',     'firebrick3'],
""     \ ]

let g:rainbow_active = 1
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

" Include user's local vim config
" if filereadable(expand("~/.vimrc.local"))
"   source ~/.vimrc.local
" endif

" nmap <Enter> :nohlsearch<Enter>/<BS>

" set guifont=Inconsolata
"set guifont=Fira\ Code
" set guifont=Hasklig

"Surround with HTML Anchor tag
" map <Leader>ah S<a href="" target="_blank" rel="noopener noreferrer"><CR>
" vmap <Leader>ml c[<C-r>"]()<esc>

" Run Commands in Tmux window
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>

"Marked App
" if executable('Marked.app')
  " nnoremap <leader>m :AsyncRun -mode=bang open -a Marked.app "$(VIM_FILENAME)" <cr>
  nnoremap <leader>m :AsyncRun -mode=bang open -a Marked\ 2.app '%:p'<cr>
  " nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>
"endif

" tmux setup with tslime for vim
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

" map <leader>` :source ~/.vimrc<CR>
map <Leader>ts :call RunCurrentSpecFile()<CR>
map <Leader>ss :call RunNearestSpec()<CR>
map <Leader>ls :call RunLastSpec()<CR>
map <Leader>as :call RunAllSpecs()<CR>

" vmap <Leader>l xi[<c-r>"]()<esc>


" ===========================
" Treesitter settings
" ===========================
" if has('nvim')
"   set foldmethod=expr
"   set foldexpr=nvim_treesitter#foldexpr()
"   set foldlevelstart=99
"   set foldlevel=99
" endif
" ===========================
" End Treesitter settings
" ===========================

" ===========================
" ALE Linting settings
" ===========================
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_sign_column_always = 0

let g:ale_lint_on_filetype_changed = 1    " default
let g:ale_lint_on_text_changed = 'always' " default
let g:ale_lint_on_insert_leave = 1        " default
let g:ale_lint_on_save = 1                " default
let g:ale_lint_on_enter = 1               " default
" Set this setting in vimrc if you want to fix files automatically on save.
let g:ale_fix_on_save = 1

" Lint configuration - clj-kondo
" clj-kondo should be installed on operating system path
" let g:ale_linters = {
"       \ 'clojure': ['vim-lsp']
"       \}
let g:ale_fixers = {
      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
      \}
" ===========================
" End ALE Linting settings
" ===========================

" ======================================
" vim-lsp Language Server Protocol settings
" ======================================
" let g:lsp_signs_enabled = 0         " enable signs
" let g:lsp_diagnostics_echo_cursor = 0 " enable echo under cursor when in normal mode
" let g:lsp_highlight_references_enabled = 0
"
" let g:lsp_signs_error = {'text': '✗'}
" let g:lsp_signs_warning = {'text': '‼'} " icons require GUI
" let g:lsp_signs_hint = {'text': '🔎'} " icons require GUI

" function! s:on_lsp_buffer_enabled() abort
"     " setlocal omnifunc=lsp#complete
"     " setlocal signcolumn=yes
"     " if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
"     " nmap <buffer> gd <plug>(lsp-definition)
"     " nmap <buffer> gs <plug>(lsp-document-symbol-search)
"     " nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
"     " nmap <buffer> gr <plug>(lsp-references)
"     " nmap <buffer> gi <plug>(lsp-implementation)
"     " nmap <buffer> gt <plug>(lsp-type-definition)
"     " nmap <buffer> <leader>rn <plug>(lsp-rename)
"     " nmap <buffer> [g <plug>(lsp-previous-diagnostic)
"     " nmap <buffer> ]g <plug>(lsp-next-diagnostic)
"     " nmap <buffer> K <plug>(lsp-hover)
"     " inoremap <buffer> <expr><c-f> lsp#scroll(+4)
"     " inoremap <buffer> <expr><c-d> lsp#scroll(-4)
"
"     " Remap for format selected region
"     " xmap <leader>f  :LspDocumentRangeFormat<cr>
"     " nmap <leader>f  :LspDocumentRangeFormat<cr>
"
"     xmap <leader>fd  :LspDocumentFormat<cr>
"     nmap <leader>fd  :LspDocumentFormat<cr>
"
"     " xmap <leader>id  :LspCodeAction refactor.inline<cr>
"     " nmap <leader>id  :LspCodeAction refactor.inline<cr>
"
"     let g:lsp_format_sync_timeout = 1000
"     " autocmd! BufWritePre <buffer>
"     "       \ call execute('LspDocumentFormatSync')
"     " autocmd BufWritePre <buffer>
"     "             \ call execute('LspCodeActionSync source.organizeImports')
"     " refer to doc to add more commands
" endfunction

" augroup lsp_install
"     au!
"     " call s:on_lsp_buffer_enabled only for languages that has the server registered.
"     autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
" augroup END


" ======================================
" End Language Server Protocol settings
" ======================================

" ===========================
" Paredit settings
" ===========================
let g:paredit_smartjump = 1
let g:paredit_leader = '\'
function! PareditMapKeysCustom()
  call PareditMapKeys()
  call RepeatableNNoRemap(g:paredit_leader . '(', ':<C-U>call PareditMoveLeft()')
  call RepeatableNNoRemap(g:paredit_leader . ')', ':<C-U>call PareditMoveRight()')
endfunction
let g:paredit_map_func = 'PareditMapKeysCustom'

" if exists( 'g:paredit_loaded' )
"   call RepeatableNNoRemap(g:paredit_leader . '(', ':<C-U>call PareditMoveLeft()')
"   call RepeatableNNoRemap(g:paredit_leader . ')', ':<C-U>call PareditMoveRight()')
" end

" ======================================
" End Paredit settings
" ======================================


" ===========================
" Bash settings
" ===========================

" if executable('bash-language-server')
"   au User lsp_setup call lsp#register_server({
"         \ 'name': 'bash-language-server',
"         \ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
"         \ 'whitelist': ['sh'],
"         \ })
" endif

" ===========================
" End Bash settings
" ===========================


" ===========================
" Elm settings
" ===========================
" au FileType elm set softtabstop=2 tabstop=2 shiftwidth=2 textwidth=79

let g:elm_jump_to_error = 0
let g:elm_make_output_file = "elm.js"
let g:elm_make_show_warnings = 0
"let g:elm_syntastic_show_warnings = 1
let g:elm_browser_command = ""
let g:elm_detailed_complete = 0
let g:elm_format_autosave = 1
let g:elm_format_fail_silently = 0
let g:elm_setup_keybindings = 1
" ===========================
" End Elm settings
" ===========================

" ===========================
" Erlang Settings
" ===========================
if has("autocmd")
  autocmd BufRead,BufNewFile *.erl,*.es.*.hrl,*.yaws,*.xrl set expandtab
  au BufNewFile,BufRead *.erl,*.es,*.hrl,*.yaws,*.xrl setf erlang
endif

au FileType erlang set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

" ===========================
" End Erlang Settings
" ===========================



" ===========================
" Idris mappings
" ===========================
let g:idris_indent_if = 3
let g:idris_indent_case = 5
let g:idris_indent_let = 4
let g:idris_indent_where = 6
let g:idris_indent_do = 3
let g:idris_indent_rewrite = 8
" ===========================
" End Idris mappings
" ===========================

" ========================
" JavaScript settings
" ========================
let g:javascript_plugin_flow = 1
let g:javascript_plugin_jsdoc = 1
let g:jsx_ext_required = 1

" Turn off jslint errors by default
let g:JSLintHighlightErrorLine = 0

" if executable('typescript-language-server')
"   au User lsp_setup call lsp#register_server({
"      \ 'name': 'javascript support using typescript-language-server',
"      \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
"      \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'package.json'))},
"      \ 'whitelist': ['javascript', 'javascript.jsx'],
"      \ })
" endif
" ========================
" End JavaScript settings
" ========================


" ===========================
" JSON Settings
" ===========================

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

" JSON Pretty Print
" map <Leader>jpp :%!python -m json.tool --indent=2<CR>


" ===========================
" End JSON Settings
" ===========================


" ========================
" Make settings
" ========================

" make uses real tabs
au FileType make set noexpandtab

" ========================
" End Make settings
" ========================

" ========================
" Conjure settings
" ========================
if has('nvim')
endif
" ========================
" End Conjure Settings
" ========================

" ========================
" Clojure settings
" ========================
if has('nvim')
  let g:conjure#client#clojure#nrepl#eval#print_buffer_size = 1024

  nnoremap <leader>cssd :ConjureShadowSelect dev<cr>
endif
" ========================
" End Clojure Settings
" ========================


" ========================
" Python Settings
" ========================
" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79
let g:neomake_python_enabled_makers = ['flake8']
" ========================
" End Python Settings
" ========================


" ======================
" Ruby Settings
" ======================
" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby

" :let ruby_foldable_groups = 'class module def do if { [ #'

au FileType ruby set softtabstop=2 tabstop=2 shiftwidth=2 textwidth=79

if executable('solargraph')
    " gem install solargraph
    au User lsp_setup call lsp#register_server({
        \ 'name': 'solargraph',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
        \ 'initialization_options': {"diagnostics": "true"},
        \ 'whitelist': ['ruby'],
        \ })
endif

"vim-rspec mappings
let g:rspec_command = 'call Send_to_Tmux("bundle exec rspec {spec}\n")'
" ======================
" End Ruby Settings
" ======================


" ======================
" Terraform Settings
" ======================
let g:terraform_align=1
let g:terraform_fmt_on_save=1

" if executable('terraform-ls')
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'terraform-ls',
"         \ 'cmd': {server_info->['terraform-ls', 'serve']},
"         \ 'whitelist': ['terraform'],
"         \ })
" endif
" ======================
" Terraform Settings
" ======================


" ========================
" TypeScript Settings
" ========================
" if executable('typescript-language-server')
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'typescript-language-server',
"         \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
"         \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
"         \ 'whitelist': ['typescript', 'typescript.tsx'],
"         \ })
" endif
" ========================
" End TypeScript Settings
" ========================

" Map w!! to write readonly files
" cmap w!! w !sudo tee % >/dev/null

au! BufWritePost .vimrc source %
