sudo apt update

sudo apt install vlc
sudo apt install timeshift

# openshot
ppa_openshot="openshot.developers/ppa"
if ! grep -q "^deb .*${ppa_openshot}" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
    sudo add-apt-repository "ppa:${ppa_openshot}"
    sudo apt update
fi
sudo apt install openshot-qt
