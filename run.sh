cd $HOME

sudo pacman -Syu
sudo pacman -S git curl i3-wm dmenu firefox xorg-server xorg-xinit kitty i3status openssh arandr

echo "export TERMINAL=/usr/bin/kitty" >> .bashrc

mkdir Documents Downloads Pictures Videos
mkdir Documents/projects

# autstart i3
echo "exec i3" >> .xinitrc

# dotfiles
git clone https://github.com/hammad-r-javed/dotfiles.git
mkdir .config

# configure i3 
mkdir .config/i3
cp dotfiles/i3/config .config/i3/
sudo cp dotfiles/i3/i3status.conf /etc/
ls -la .config/i3

# configure nvim
mkdir .config/nvim
cp -r dotfiles/nvim/lua .config/nvim
cp dotfiles/nvim/init.lua .config/nvim
ls -la .config/nvim

# finish
read -p "press Enter to run 'startx': "
startx
