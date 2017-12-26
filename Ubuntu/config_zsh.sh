# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# geometry theme
git clone https://github.com/geometry-zsh/geometry.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/geometry

# powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# zshrc
cp .zshrc ${HOME}
cd ${HOME}
echo "alias git=hub" >> .zshrc
source .zshrc
