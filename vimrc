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

set undodir=~/.vim/undodir
set undofile "Maintain undo history between sessions

" let Vundle manage Vundle
" required! 
" Plugin 'gmarik/Vundle.vim'

if exists('*minpac#init')
  " minpac is loaded.
  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  " Additional plugins here.
  call minpac#add('airblade/vim-gitgutter') " Git
  call minpac#add('altercation/vim-colors-solarized') "Solarized
  call minpac#add('editorconfig/editorconfig-vim')
  call minpac#add('elixir-lang/vim-elixir') " Elixir
  call minpac#add('ElmCast/elm-vim') " Elm
  call minpac#add('guns/vim-clojure-static') " Clojure
  call minpac#add('jgdavey/tslime.vim') " Send to Tmux
  call minpac#add('leafgarland/typescript-vim') " TypeScript
  call minpac#add('luochen1990/rainbow')
"  call minpac#add('hyhugh/coc-erlang_ls', {'do': 'yarn install --frozen-lockfile'})
  call minpac#add('idris-hackers/idris-vim') " Idris
  call minpac#add('mxw/vim-jsx') " React JSX support
"  call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
"  call minpac#add('neoclide/coc-solargraph') " Ruby
  call minpac#add('neomake/neomake') " Linting/Make
  call minpac#add('nvie/vim-flake8') " Python
  call minpac#add('pangloss/vim-javascript') " JavaScript
  call minpac#add('prabirshrestha/async.vim') " Vim/NeoVim async normalization
  call minpac#add('prabirshrestha/vim-lsp') " Language Server Protocol
  call minpac#add('raichoo/purescript-vim') " PureScript
  call minpac#add('reasonml-editor/vim-reason') " ReasonML
  call minpac#add('ryanolsonx/vim-lsp-javascript') " JavaScript
  call minpac#add('ryanolsonx/vim-lsp-python') " Python
  call minpac#add('ryanolsonx/vim-lsp-typescript') " TypeScript
  call minpac#add('skywind3000/asyncrun.vim') " :AsyncRun
  call minpac#add('thoughtbot/vim-rspec')
  call minpac#add('tpope/vim-classpath')
  call minpac#add('tpope/vim-fireplace') " Clojure
  call minpac#add('tpope/vim-fugitive') " Git
  call minpac#add('tpope/vim-pathogen')
  call minpac#add('tpope/vim-surround')
  call minpac#add('tpope/vim-repeat')
  call minpac#add('tpope/vim-unimpaired')
  call minpac#add('vim-erlang/erlang-motions.vim') " Erlang
  call minpac#add('vim-erlang/vim-erlang-runtime') " Erlang
  call minpac#add('vim-erlang/vim-erlang-compiler') " Erlang
  call minpac#add('vim-erlang/vim-erlang-omnicomplete') " Erlang
  call minpac#add('vim-erlang/vim-erlang-tags') " Erlang
  call minpac#add('vim-erlang/vim-erlang-skeletons') " Erlang
  call minpac#add('vim-ruby/vim-ruby') " Ruby
  call minpac#add('vim-syntastic/syntastic')
  call minpac#add('w0rp/ale') " Linting
  call minpac#add('vim-jp/syntax-vim-ex')
endif

" Define user commands for updating/cleaning the plugins.
" Each of them loads minpac, reloads .vimrc to register the
" information of plugins, then performs the task.
command! PackUpdate packadd minpac | source ~/.vimrc | call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  packadd minpac | source ~/.vimrc | call minpac#clean()
command! PackStatus packadd minpac | source ~/.vimrc | call minpac#status()

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



set path+=**
set wildmenu
set exrc " allow project level vimrc files
set secure


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
set nofoldenable                   " Say no to code folding...  "
set grepprg=ag                     " Use Silver Searcher instead of grep
set ruler                          " show the cursor position all the time
set tags=tags
set updatetime=300                 " per coc.vim for diagnostic messages
set signcolumn=yes
set cmdheight=2                    " Better display for messages
set shortmess+=c                   " don't give |ins-completion-menu| messages.


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
"let g:syntastic_aggregate_errors = 1
"let g:syntastic_javascript_checkers = ['jshint', 'jscs']
"let g:syntastic_ruby_checkers = ['rubocop']


" Without setting this, ZoomWin restores windows in a way that causes
" equalalways behavior to be triggered the next time CommandT is used.
" This is likely a bludgeon to solve some other issue, but it works
set noequalalways

" Command-T configuration
let g:CommandTMaxHeight=20

" ZoomWin configuration
map <Leader><Leader> :ZoomWin<CR>

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
" let g:solarized_termtrans = 1
" let g:solarized_termcolors=256
" let g:solarized_termcolors= 16 | 256
colorscheme solarized

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

let g:rainbow_active = 1
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

nmap <Enter> :nohlsearch<Enter>/<BS>

" set guifont=Inconsolata
"set guifont=Fira\ Code
set guifont=Hasklig

"Surround with HTML Anchor tag
map <Leader>ah S<a href="" target="_blank" rel="noopener noreferrer"><CR>
vmap <Leader>ml c[<C-r>"]()<esc>

" Run Commands in Tmux window
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>

"Marked App
if executable('Marked.app')
  nnoremap <leader>m :AsyncRun -mode=bang open -a Marked.app "$(VIM_FILENAME)" <cr>
endif

" tmux setup with tslime for vim
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1

map <leader>` :source ~/.vimrc<CR>
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

vmap <Leader>l xi[<c-r>"]()<esc>

" ===========================
" ALE Linting settings
" ===========================
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_sign_column_always = 1

let g:ale_lint_on_filetype_changed = 1    " default
let g:ale_lint_on_text_changed = 'always' " default
let g:ale_lint_on_save = 1                " default
let g:ale_lint_on_enter = 1               " default
" Set this setting in vimrc if you want to fix files automatically on save.
let g:ale_fix_on_save = 1
" ===========================
" End ALE Linting settings
" ===========================

" ======================================
" Language Server Protocol settings
" ======================================
let g:lsp_signs_enabled = 1         " enable signs
let g:lsp_diagnostics_echo_cursor = 1 " enable echo under cursor when in normal mode
let g:lsp_highlight_references_enabled = 1

let g:lsp_signs_error = {'text': '✗'}
let g:lsp_signs_warning = {'text': '‼'} " icons require GUI
let g:lsp_signs_hint = {'text': '🔎'} " icons require GUI

augroup format_on_write_group
  autocmd!
  "autocmd BufWrite <buffer> LspDocumentFormatSync
augroup END

" Remap for format selected region
xmap <leader>f  :LspDocumentRangeFormat<cr>
nmap <leader>f  :LspDocumentRangeFormat<cr>

xmap <leader>fa  :LspDocumentFormat<cr>
nmap <leader>fa  :LspDocumentFormat<cr>

nmap <leader>rn :LspRename<cr>

" ======================================
" End Language Server Protocol settings
" ======================================


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

if executable('typescript-language-server')
  au User lsp_setup call lsp#register_server({
     \ 'name': 'javascript support using typescript-language-server',
     \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
     \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'package.json'))},
     \ 'whitelist': ['javascript', 'javascript.jsx'],
     \ })
endif
" ========================
" End JavaScript settings
" ========================


" ===========================
" JSON Settings
" ===========================

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

" JSON Pretty Print
map <Leader>jpp :%!python -m json.tool <CR>


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

:let ruby_foldable_groups = 'class module def do if { [ #'

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


" ========================
" TypeScript Settings
" ========================
if executable('typescript-language-server')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'typescript-language-server',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
        \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
        \ 'whitelist': ['typescript', 'typescript.tsx'],
        \ })
endif
" ========================
" End TypeScript Settings
" ========================



""" " ===========================
""" " coc.vim plugin settings
""" " ===========================
""" 
""" " Use tab for trigger completion with characters ahead and navigate.
""" " Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
""" inoremap <silent><expr> <TAB>
"""       \ pumvisible() ? "\<C-n>" :
"""       \ <SID>check_back_space() ? "\<TAB>" :
"""       \ coc#refresh()
""" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
""" 
""" function! s:check_back_space() abort
"""   let col = col('.') - 1
"""   return !col || getline('.')[col - 1]  =~# '\s'
""" endfunction
""" 
""" " Use <c-space> to trigger completion.
""" inoremap <silent><expr> <c-space> coc#refresh()
""" 
""" " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
""" " Coc only does snippet and additional edit on confirm.
""" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
""" " Or use `complete_info` if your vim support it, like:
""" " inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
""" 
""" " Use `[g` and `]g` to navigate diagnostics
""" nmap <silent> [g <Plug>(coc-diagnostic-prev)
""" nmap <silent> ]g <Plug>(coc-diagnostic-next)
""" 
""" " Remap keys for gotos
""" nmap <silent> gd <Plug>(coc-definition)
""" nmap <silent> gy <Plug>(coc-type-definition)
""" nmap <silent> gi <Plug>(coc-implementation)
""" nmap <silent> gr <Plug>(coc-references)
""" 
""" " Use K to show documentation in preview window
""" nnoremap <silent> K :call <SID>show_documentation()<CR>
""" 
""" function! s:show_documentation()
"""   if (index(['vim','help'], &filetype) >= 0)
"""     execute 'h '.expand('<cword>')
"""   else
"""     call CocAction('doHover')
"""   endif
""" endfunction
""" 
""" " Highlight symbol under cursor on CursorHold
""" " autocmd CursorHold * silent call CocActionAsync('highlight')
""" 
""" 
""" " Remap for rename current word
""" nmap <leader>rn <Plug>(coc-rename)
""" 
""" " Remap for rename current word
""" xmap <leader>rf <Plug>(coc-refactor)
""" nmap <leader>rf <Plug>(coc-refactor)
""" 
""" " " Remap for format selected region
""" " xmap <leader>f  <Plug>(coc-format-selected)
""" " nmap <leader>f  <Plug>(coc-format-selected)
""" 
""" augroup mygroup
"""   autocmd!
"""   " Setup formatexpr specified filetype(s).
"""   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"""   " Update signature help on jump placeholder
"""   " autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
""" augroup end
""" 
""" " Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
""" xmap <leader>a  <Plug>(coc-codeaction-selected)
""" nmap <leader>a  <Plug>(coc-codeaction-selected)
""" 
""" " Remap for do codeAction of current line
""" nmap <leader>ac  <Plug>(coc-codeaction)
""" " Fix autofix problem of current line
""" nmap <leader>qf  <Plug>(coc-fix-current)
""" 
""" " Create mappings for function text object, requires document symbols feature of languageserver.
""" xmap if <Plug>(coc-funcobj-i)
""" xmap af <Plug>(coc-funcobj-a)
""" omap if <Plug>(coc-funcobj-i)
""" omap af <Plug>(coc-funcobj-a)
""" 
""" " Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
""" nmap <silent> <TAB> <Plug>(coc-range-select)
""" xmap <silent> <TAB> <Plug>(coc-range-select)
""" 
""" " Use `:Format` to format current buffer
""" command! -nargs=0 Format :call CocAction('format')
""" 
""" " Use `:Fold` to fold current buffer
""" command! -nargs=? Fold :call     CocAction('fold', <f-args>)
""" 
""" " use `:OR` for organize import of current buffer
""" command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
""" 
""" " Add status line support, for integration with other plugin, checkout `:h coc-status`
""" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
""" 
""" " Using CocList
""" " Show all diagnostics
""" nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
""" " Manage extensions
""" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
""" " Show commands
""" nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
""" " Find symbol of current document
""" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
""" " Search workspace symbols
""" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
""" " Do default action for next item.
""" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
""" " Do default action for previous item.
""" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
""" " Resume latest coc list
""" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
""" 
""" " ===========================
""" " coc.vim plugin settings
""" " ===========================


" Map w!! to write readonly files
cmap w!! w !sudo tee % >/dev/null

au! BufWritePost .vimrc source %

