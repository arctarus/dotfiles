My dot files && vim plugins
===========================

Dot files included
------------------

* vimrc
* gvimrc
* bashrc
* bash_aliases
* irbrb
* railsrc

Instalation
-----------

````bash
git clone git://github.com/arctarus/dotfiles.git ~/.vim

ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
ln -s ~/.vim/bashrc ~/.bashrc
ln -s ~/.vim/bash_aliases ~/.bash_aliases
ln -s ~/.vim/irbrc ~/.irbrc
ln -s ~/.vim/railsrc ~/.railsrc

cd ~/.vim
git submodule init
git submodule update
````

Plugins
-------
* pathogen https://github.com/tpope/vim-pathogen
* fugitive https://github.com/tpope/vim-fugitive
* vim-rails https://github.com/tpope/vim-rails.git
* nerdtree https://github.com/scrooloose/nerdtree
* ctrlp https://github.com/kien/ctrlp.vim
* syntastic https://github.com/scrooloose/syntastic
* vim-javascript https://github.com/pangloss/vim-javascript
* ack https://github.com/mileszs/ack.vim
