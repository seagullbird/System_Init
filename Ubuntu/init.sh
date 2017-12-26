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
    sudo apt install -y zsh
    chsh -s $(which zsh)
    sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
}

function InstallGit()
{
    sudo apt install -y git
    git config --global alias.ch checkout
    git config --global alias.br branch
    git config --global alias.cm commit
    git config --global alias.st status
    git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
}

function InstallHub()
{
    cd
    git clone https://github.com/github/hub.git && cd hub
    script/build -o ~/bin/hub
}

function InstallAll()
{
    InstallGit
    InstallTerminator
    InstallSublime3
    InstallOhMyZsh
}

InstallAll
