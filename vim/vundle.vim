" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle (required)!
Plugin 'gmarik/vundle'

" Color themes
Plugin 'flazz/vim-colorschemes'

" Autocomplete
Plugin 'wincent/Command-T'

Plugin 'tpope/vim-sensible'
Plugin 'ervandew/supertab'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-unimpaired'

" Syntax Highlighting
Plugin 'pangloss/vim-javascript'
Plugin 'slim-template/vim-slim.git'
Plugin 'kchmck/vim-coffee-script'
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
Plugin 'thoughtbot/vim-rspec'
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

