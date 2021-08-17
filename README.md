# Things to Do After Installing Ubuntu 20.04

[![hackmd-github-sync-badge](https://hackmd.io/C7PvmTDNQBakhNj8PPA8jg/badge)](https://hackmd.io/C7PvmTDNQBakhNj8PPA8jg)


## Setup
### Installing latest updates
```shell
$ sudo apt update && sudo apt upgrade
```

### Installing your favorite web browser
Take [Brave](https://brave.com/) for example, you could either follow their [official installation guideline](https://brave.com/linux/), or install Brave in the Ubuntu Software Center.

### Installing Git
Launch terminal and type the following command:
```shell
$ sudo apt install git-all
```
Then, set up your username and email:
```shell
$ git config --global user.name "Your Name"
$ git config --global user.email "youremail@domain.com"
```
#### Optional configurations
You could connect GitHub with SSH by following the [official instructions](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/checking-for-existing-ssh-keys). Furthermore, you could sign your commits using [GPG commit signature verification](https://docs.github.com/en/github/authenticating-to-github/managing-commit-signature-verification/about-commit-signature-verification#gpg-commit-signature-verification).

### Cloning this repository
After setting up your Git configuration, you could now clone this repository to your computer using the below command:
```shell
# HTTPS
$ git clone https://github.com/nickchenchj/dotfiles.git

# SSH
$ git clone git@github.com:nickchenchj/dotfiles.git
```

Change the working directory to the one you have just cloned to, and run the following command in your terminal. It will automatically install the required packages and dependencies for you:
```shell
# Basic
$ bash setup.sh

# Optional
$ bash setup_optional.sh
```

### Optional setup
#### UFW - Uncomplicated Firewall
```shell
$ sudo ufw enable
```
more information for [UFW](https://help.ubuntu.com/community/UFW)

#### TLP - Optimize Linux Laptop Battery Life
```shell
$ sudo apt install tlp tlp-rdw
$ sudo systemctl enable tlp
```
more information for [TLP](https://linrunner.de/tlp/)