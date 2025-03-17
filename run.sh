cd $HOME

sudo pacman -Syu
sudo pacman -S git curl i3-wm dmenu firefox xorg-server xorg-xinit ghostty i3status openssh

# setting ghostty to default term
echo "export TERMINAL=/usr/bin/ghostty" >> .bashrc

mkdir Documents Downloads Pictures Videos
mkdir Documents/projects

# i3 stuff
## autstart i3
echo "exec i3" >> .xinitrc

## configure i3 
# <todo>

## configure nvim
# <todo>

# finish
startx
