" ========================================================================
" Vundle
" ========================================================================






set shell=/bin/bash
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle (required)!
Plugin 'gmarik/vundle'

Plugin 'ervandew/supertab'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-unimpaired'
Plugin 'pangloss/vim-javascript'
Plugin 'slim-template/vim-slim.git'
Plugin 'wincent/Command-T'
Plugin 'vim-ruby/vim-ruby'
Plugin 'koron/nyancat-vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'blackrush/vim-gocode'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'Rykka/riv.vim'
Plugin 'mv/mv-vim-nginx'
Plugin 'tpope/vim-foreplay'
Plugin 'tpope/vim-classpath'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-rails'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'godlygeek/tabular'
Plugin 'mileszs/ack.vim'
Plugin 'junegunn/vim-easy-align'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ========================================================================
" Syntax Highlighting
" ========================================================================

syntax on                 " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml setlocal ai sw=2 sts=2 et
  autocmd FileType ruby,eruby,yaml setlocal path+=lib colorcolumn=80
  autocmd FileType rst,haml,slim setlocal colorcolumn=80
  autocmd BufNewFile,BufRead Gemfile,Vagrantfile,*.thor set filetype=ruby
  autocmd FileType md,markdown setlocal textwidth=79 colorcolumn=80 formatoptions+=t
  autocmd FileType rst set spell wrap spellcapcheck="" linebreak textwidth=79 colorcolumn=80 formatoptions+=t
augroup END
au BufNewFile,BufRead *.coffee set filetype=coffee
au BufNewFile,BufRead *.md set filetype=markdown wrap spell
au BufNewFile,BufRead nginx.conf set filetype=nginx

runtime macros/matchit.vim

vmap <Enter> <Plug>(EasyAlign)*
" ========================================================================
" Leader Functions
" ========================================================================

let mapleader = ","

nmap <Leader>a :Ack 
map <Leader>ac :sp app/controllers/application_controller.rb<cr>
map <Leader>b :!bundle install<cr>
nmap <Leader>bi :source ~/.vimrc<cr>:BundleInstall<cr>
vmap <Leader>bed "td?describe<cr>obed<tab><esc>"tpkdd/end<cr>o<esc>:nohl<cr>
map <Leader>cc :!cucumber --drb %<CR>
map <Leader>cu :Tabularize /\|<CR>
map <Leader>co ggVG"*y
map <Leader>cc :Rjcollection client/
map <Leader>cj :Rjspec client/
map <Leader>cm :Rjmodel client/
map <Leader>ct :Rtemplate client/
map <Leader>cv :Rjview client/
map <Leader>cn :e ~/Dropbox/notes/coding-notes.md<cr>
map <Leader>d odebugger<cr>puts 'debugger'<esc>:w<cr>
map <Leader>dr :e ~/Dropbox<cr>
map <Leader>dj :e ~/Dropbox/notes/debugging_journal.md<cr>
map <Leader>ec :e ~/code/
map <Leader>gac :Gcommit -m -a ""<LEFT>
map <Leader>gc :Gcommit -m ""<LEFT>
map <Leader>gr :e ~/Dropbox/docs/journal<CR>
map <Leader>gs :Gstatus<CR>
map <Leader>gw :!git add . && git commit -m 'WIP' && git push<cr>
map <Leader>f :CommandTFlush<CR>
map <Leader>fix :cnoremap % %<CR>
map <Leader>fa :sp test/factories.rb<CR>
map <Leader>h :CommandT<CR>
map <Leader>i mmgg=G`m<CR>
map <Leader>j :CommandT app/assets/javascripts<cr>client/
map <Leader>m :Rmodel
map <Leader>ng :e ~/angular<cr>
map <Leader>nn :sp ~/Dropbox/notes/programming_notes.md<cr>
map <Leader>o :w<cr>:call RunCurrentLineInTest()<CR>
map <Leader>pn :sp ~/Dropbox/work/thoughtbot/notes/project-notes.txt<cr>
map <Leader>ra :%s/
map <Leader>rd :!bundle exec rspec % --format documentation<CR>
map <Leader>rf :CommandTFlush<CR>:CommandT<CR>
map <Leader>rs :vsp <C-r>#<cr><C-w>w
map <Leader>rt q:?!ruby<cr><cr>
map <Leader>rw :%s/\s\+$//<cr>:w<cr>
map <Leader>sc :sp db/schema.rb<cr>
map <Leader>sg :sp<cr>:grep
map <Leader>sj :call OpenJasmineSpecInBrowser()<cr>
map <Leader>sm :RSmodel
map <Leader>sp yss<p>
map <Leader>sn :e ~/.vim/snippets/ruby.snippets<CR>
map <Leader>so :so %<cr>
map <Leader>sq j<c-v>}klllcs<esc>:wq<cr>
map <Leader>ss ds)i <esc>:w<cr>
map <Leader>st :!ruby -Itest % -n "//"<left><left>
map <Leader>su :RSunittest
map <Leader>sv :RSview
map <Leader>t :w<cr>:call RunCurrentTest()<CR>
map <Leader>y :!rspec --drb %<cr>
map <Leader>u :source ~/.vimrc<cr>
map <Leader>vc :RVcontroller<cr>
map <Leader>vf :RVfunctional<cr>
map <Leader>vg :vsp<cr>:grep
map <Leader>vu :RVunittest<CR>
map <Leader>vm :RVmodel<cr>
map <Leader>vv :RVview<cr>
map <Leader>w <C-w>w
map <Leader>x :exec getline(".")<cr>

" Edit another file in the same directory as the current file
" uses expression to extract path from current file's path
map <Leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>

map <C-h> :nohl<cr>
imap <C-l> :<Space>
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>
imap <C-o> <esc>
map <C-t> <esc>:tabnew<CR>
map <C-x> <C-w>c
map <C-n> :cn<CR>
map <C-p> :cp<CR>

" Emacs-like beginning and end of line.
imap <c-e> <c-o>$
imap <c-a> <c-o>^

" Visual Mode Maps
:vnoremap . :normal .<CR>

set nocompatible
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set history=500		" keep 500 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set autoindent
set showmatch
set nowrap
set backupdir=~/.tmp
set directory=~/.tmp " Don't clutter my dirs up with swp and tmp files
set autoread
set wmh=0
set viminfo+=!
set guioptions-=T
set guifont=Triskweline_10:h10
set et
set sw=2
set smarttab
set ts=2 "set indent to two spaces
set noincsearch
set ignorecase smartcase
set laststatus=2  " Always show status line.
set relativenumber
set gdefault " assume the /g flag on :s substitutions to replace all matches in a line
set autoindent " always set autoindenting on
set bg=light

" Set the tag file search order
set tags=./tags;
set tags+=gems.tags

" Use _ as a word-separator
" set iskeyword-=_

" Use Silver Searcher instead of grep
set grepprg=ag

" Get rid of the delay when hitting esc!
set noesckeys

" Make the omnicomplete text readable
:highlight PmenuSel ctermfg=black

" Fuzzy finder: ignore stuff that can't be opened, and generated files
let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**"

" Highlight the status line
highlight StatusLine ctermfg=blue ctermbg=yellow

" Format xml files
au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"

set shiftround " When at 3 spaces and I hit >>, go to 4, not 5.

set nofoldenable " Say no to code folding...

command! WQ wq " Bind :WQ to wq
command! Wq wq " Bind :Wq to :w
command! Q q " Bind :Q to :q
command! Qall qall


" Disable Ex mode
map Q <Nop>

" Disable K looking stuff up
map K <Nop>

" When loading text files, wrap them and don't split up words.
au BufNewFile,BufRead *.txt setlocal wrap
au BufNewFile,BufRead *.txt setlocal lbr
au BufNewFile,BufRead *.txt setlocal nolist " Don't display whitespace

" Better? completion on command line
set wildmenu
" What to do when I press 'wildchar'. Worth tweaking to see what feels right.
set wildmode=list:full

" (Hopefully) removes the delay when hitting esc in insert mode
set noesckeys
set ttimeout
set ttimeoutlen=1

" Turn on spell-checking in markdown and text.
" au BufRead,BufNewFile *.md,*.txt setlocal spell
" Spell indentation
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red
syn match myExCapitalWords +\<\w*[A-Za-z]\K*\>+ contains=@NoSpell

" Merge a tab into a split in the previous window
function! MergeTabs()
  if tabpagenr() == 1
    return
  endif
  let bufferName = bufname("%")
  if tabpagenr("$") == tabpagenr()
    close!
  else
    close!
    tabprev
  endif
  split
  execute "buffer " . bufferName
endfunction

nmap <C-W>u :call MergeTabs()<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Test-running
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RunCurrentTest()
  let in_test_file = match(expand("%"), '\(.feature\|_spec.rb\|_test.rb\)$') != -1
  if in_test_file
    call SetTestFile()

    if match(expand('%'), '\.feature$') != -1
      call SetTestRunner("!cucumber")
      exec g:bjo_test_runner g:bjo_test_file
    elseif match(expand('%'), '_spec\.rb$') != -1
      call SetTestRunner("!bundle exec rspec --color --format documentation")
      exec g:bjo_test_runner g:bjo_test_file
    else
      call SetTestRunner("!ruby -Itest")
      exec g:bjo_test_runner g:bjo_test_file
    endif
  else
    exec g:bjo_test_runner g:bjo_test_file
  endif
endfunction

function! SetTestRunner(runner)
  let g:bjo_test_runner=a:runner
endfunction

function! RunCurrentLineInTest()
  let in_test_file = match(expand("%"), '\(.feature\|_spec.rb\|_test.rb\)$') != -1
  if in_test_file
    call SetTestFileWithLine()
  end

  exec "!bin/rspec" g:bjo_test_file . ":" . g:bjo_test_file_line
endfunction

function! SetTestFile()
  let g:bjo_test_file=@%
endfunction

function! SetTestFileWithLine()
  let g:bjo_test_file=@%
  let g:bjo_test_file_line=line(".")
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SWITCH BETWEEN TEST AND PRODUCTION CODE
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! OpenTestAlternate()
  let new_file = AlternateForCurrentFile()
  exec ':e ' . new_file
endfunction
function! AlternateForCurrentFile()
  let current_file = expand("%")
  let new_file = current_file
  let in_spec = match(current_file, '^spec/') != -1
  let going_to_spec = !in_spec
  let in_app = match(current_file, '\<controllers\>') != -1 || match(current_file, '\<models\>') != -1 || match(current_file, '\<views\>') != -1 || match(current_file, '\<helpers\>') != -1
  if going_to_spec
    if in_app
      let new_file = substitute(new_file, '^app/', '', '')
    end
    let new_file = substitute(new_file, '\.e\?rb$', '_spec.rb', '')
    let new_file = 'spec/' . new_file
  else
    let new_file =
    substitute(new_file, '_spec\.rb$', '.rb', '')
    let new_file =
    substitute(new_file, '^spec/', '', '')
    if in_app
      let new_file = 'app/' . new_file
    end
  endif
  return new_file
endfunction
nnoremap <leader>. :call OpenTestAlternate()<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PROMOTE VARIABLE TO RSPEC LET
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! PromoteToLet()
  :normal! dd
  " :exec '?^\s*it\>'
  :normal! P
  :.s/\(\w\+\) = \(.*\)$/let(:\1) { \2 }/
  :normal ==
endfunction
:command! PromoteToLet :call PromoteToLet()
:map <leader>l :PromoteToLet<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

inoremap <Tab> <C-P>

nmap k gk
nmap j gj


" Don't add the comment prefix when I hit enter or o/O on a comment line.
set formatoptions-=or

" set statusline+=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

let g:CommandTMaxHeight=50
let g:CommandTMatchWindowAtTop=1

" Don't wait so long for the next keypress (particularly in ambigious Leader
" situations.
set timeoutlen=500

" Remove trailing whitespace on save for ruby files.
au BufWritePre *.rb :%s/\s\+$//e
au BufWritePre *.rake :%s/\s\+$//e
au BufWritePre *.haml :%s/\s\+$//e
au BufWritePre *.coffee :%s/\s\+$//e

function! OpenFactoryFile()
  if filereadable("test/factories.rb")
    execute ":sp test/factories.rb"
  else
    execute ":sp spec/factories.rb"
  end
endfunction

" Set gutter background to black
highlight SignColumn ctermbg=black

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE (thanks Gary Bernhardt)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <Leader>n :call RenameFile()<cr>

" Display extra whitespace
set list listchars=tab:»·,trail:·

" ========================================================================
" End of things set by me.
" ========================================================================

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
    au!

    " For all text files set 'textwidth' to 78 characters.
    autocmd FileType text setlocal textwidth=78

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    autocmd BufReadPost *
          \ if line("'\"") > 0 && line("'\"") <= line("$") |
          \   exe "normal g`\"" |
          \ endif

  augroup END

endif " has("autocmd")
