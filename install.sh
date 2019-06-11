mkdir -p ~/tmp
rm -rf ~/tmp/vim-backup
mkdir -p ~/.vim
mv ~/.vim ~/tmp/vim-backup

git clone https://github.com/dev800/vimfile.git ~/.vim

cd ~/.vim

mkdir -p ~/.vim/bundle

# cp .vimrc ~/.vimrc
# cp .gvimrc ~/.gvimrc

rm ~/.vimrc
rm ~/.gvimrc

ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.vim/.gvimrc ~/.gvimrc

touch ~/.vim/.vimrc_local
touch ~/.vim/.gvimrc_local
touch ~/.vim/vundlerc_local

mkdir -p ~/.vim/bundle/vundle
cd ~/.vim/bundle/vundle && git clone git://github.com/gmarik/vundle.git .
vim +BundleInstall +qall

#  # install monaco font
#  cd ~/tmp
#  wget http://www.gringod.com/wp-upload/MONACO.TTF
#  sudo cp MONACO.TTF /usr/share/fonts/truetype/
#  git clone https://github.com/pdf/ubuntu-mono-powerline-ttf.git ~/.fonts/ubuntu-mono-powerline-ttf
#  sudo fc-cache -f -v
#  
#  # install ctags
#  sudo apt-get install ctags
#  
#  # install ack-grep
#  sudo apt-get install ack-grep

