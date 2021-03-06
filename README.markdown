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
* gitconfig

Instalation
-----------

````bash
git clone git://github.com/arctarus/dotfiles.git ~/.vim

ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
ln -s ~/.vim/zshrc ~/.zshrc
ln -s ~/.vim/irbrc ~/.irbrc
ln -s ~/.vim/railsrc ~/.railsrc

cd ~/.vim
git submodule init
git add submodule url
git submodule update
git submodule foreach git pull origin master
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
* vim-commentary: https://github.com/tpope/vim-commentary
* vim-textobj-entire: https://github.com/kana/vim-textobj-entire
* vim-endwise https://github.com/tpope/vim-endwise
* supertab https://github.com/ervandew/supertab
* vim-jst https://github.com/briancollins/vim-jst.git
* vim-coffee-script https://github.com/kchmck/vim-coffee-script
