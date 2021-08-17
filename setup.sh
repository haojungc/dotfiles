sudo apt update

sudo apt install vim-gtk3
sudo apt install build-essential
sudo apt install snapd
sudo apt install curl
sudo apt install tig
sudo apt install silversearcher-ag
sudo apt install bat
sudo apt install gnome-tweak-tool && printf "\nSwap ESC and Caps Lock\n" && gnome-tweaks

if ! grep -q "batcat" ~/.bashrc; then
    echo "Creating alias for batcat (bat -> batcat)..."
    echo "alias bat=\"batcat\"" >> ~/.bashrc
fi
