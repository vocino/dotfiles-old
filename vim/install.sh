#!/usr/bin/env bash
mkdir -p ~/.vimbundles
cd ~/.vimbundles

get_bundle() {
  (
  if [ -d "$2" ]; then
    echo "Updating $1's $2"
    cd "$2"
    git pull --rebase
  else
    git clone "git://github.com/$1/$2.git"
  fi
  )
}

get_bundle duff vim-bufonly
get_bundle godlygeek tabular
get_bundle jgdavey tslime.vim
get_bundle jgdavey vim-blockle
get_bundle jgdavey vim-turbux
get_bundle kchmck vim-coffee-script
get_bundle mileszs ack.vim
get_bundle pangloss vim-javascript
get_bundle rking ag.vim
get_bundle therubymug vim-pyte
get_bundle tomasr molokai

# tpope stuff
get_bundle tpope vim-abolish
get_bundle tpope vim-bundler
get_bundle tpope vim-commentary
get_bundle tpope vim-cucumber
get_bundle tpope vim-endwise
get_bundle tpope vim-eunuch
get_bundle tpope vim-fugitive
get_bundle tpope vim-git
get_bundle tpope vim-haml
get_bundle tpope vim-markdown
get_bundle tpope vim-pathogen
get_bundle tpope vim-ragtag
get_bundle tpope vim-rails
get_bundle tpope vim-rake
get_bundle tpope vim-repeat
get_bundle tpope vim-rsi
get_bundle tpope vim-sensible
get_bundle tpope vim-sleuth
get_bundle tpope vim-speeddating
get_bundle tpope vim-surround
get_bundle tpope vim-tbone
get_bundle tpope vim-unimpaired
get_bundle tpope vim-vividchalk

# scripts
get_bundle vim-scripts bufexplorer.zip
get_bundle vim-scripts bufkill.vim

# JSX for React
get_bundle mxw vim-jsx

# navigation
get_bundle shougo unite.vim
get_bundle shougo vimproc.vim
get_bundle shougo neomru.vim
get_bundle scrooloose nerdtree

# vanity
get_bundle bling vim-airline
get_bundle chriskempson tomorrow-theme
#get_bundle therubymug vim-dracula

# git
#get_bundle airblade vim-gitgutter

vim -c 'call pathogen#helptags()|q'
