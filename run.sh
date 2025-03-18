cd $HOME

sudo pacman -Syu
sudo pacman -S git curl i3-wm dmenu firefox xorg-server xorg-xinit alacritty i3status openssh

# setting ghostty to default term
echo "export TERMINAL=/usr/bin/alacritty" >> .bashrc

mkdir Documents Downloads Pictures Videos
mkdir Documents/projects

# autstart i3
echo "exec i3" >> .xinitrc

# dotfiles
git clone https://github.com/hammad-r-javed/dotfiles.git

# configure i3 
cp dotfiles/i3/config .config/i3/
sudo cp dotfiles/i3/i3status.conf /etc/

# configure nvim
mkdir .config/nvim
cp -r dotfiles/nvim/lua .config/nvim
cp dotfiles/nvim/init.lua .config/nvim

# finish
startx
