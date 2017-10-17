# install terminator
function InstallTerminator()
{
    sudo add-apt-repository ppa:gnome-terminator
    sudo apt-get update
    sudo apt-get install terminator
}

function InstallSublime3()
{
    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
    echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
    sudo apt-get update
    sudo apt-get install sublime-text
}

function InstallOhMyZsh()
{
    sudo apt install -y zsh git
    chsh -s $(which zsh)
    sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
}

function InstallAll()
{
    sudo add-apt-repository ppa:gnome-terminator
    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
    echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
    sudo apt-get update
    sudo apt-get install -y terminator sublime-text zsh git
    chsh -s $(which zsh)
    sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
}

InstallAll
