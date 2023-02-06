sudo apt update

sudo apt install vim-gtk3 tig curl \
    build-essential clang-format \
    cppcheck aspell colordiff valgrind
sudo apt install snapd
sudo apt install silversearcher-ag
sudo apt install bat
sudo apt install gnome-tweaks && printf "\nSwap ESC and Caps Lock\n" && gnome-tweaks

ln -sfn "${PWD}/.vimrc" ~/.vimrc

if ! grep -q "batcat" ~/.bashrc; then
    echo "Creating alias for batcat (bat -> batcat)..."
    echo "alias bat=\"batcat\"" >> ~/.bashrc
fi

source ~/.bashrc
