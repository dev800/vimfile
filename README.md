## Happy Vimfile

-> 请备份你之前的vimrc!!!

## On Ubuntu

```
# install gvim
sudo apt-get install vim vim-gtk
```

```
# install monaco font

mkdir -p  ~/tmp
cd ~/tmp
wget http://www.gringod.com/wp-upload/MONACO.TTF
sudo cp MONACO.TTF /usr/share/fonts/truetype/
git clone https://github.com/pdf/ubuntu-mono-powerline-ttf.git ~/.fonts/ubuntu-mono-powerline-ttf
sudo fc-cache -f -v

# install ctags
sudo apt-get install ctags

# install ack-grep
sudo apt-get install ack-grep

```

## install steps

```bash
git clone git@github.com:dev800/vimfile.git ~/.vim

cd ~/.vim

mkdir -p ~/.vim/bundle

rm ~/.vimrc
rm ~/.gvimrc

ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.vim/.gvimrc ~/.gvimrc

touch ~/.vim/.vimrc_local
touch ~/.vim/.gvimrc_local
touch ~/.vim/vundlerc_local

mkdir -p ~/.vim/bundle/vundle
cd ~/.vim/bundle/vundle && git clone git://github.com/gmarik/vundle.git .
cd ~/.vim && ./bundle.sh
```
