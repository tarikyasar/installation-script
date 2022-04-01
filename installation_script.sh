# Get kernel name
# Darwin for macOS || Linux for Linux

kernel_name=$(uname)

if [ "$kernel_name" = "Darwin" ];
then
    defaults write com.apple.dock autohide-delay -float 0; killall Dock
    defaults write com.apple.dock autohide-time-modifier -float 0; killall Dock
    echo "Installation starts for macOS"
    echo "Installing xcode command line tools..."
    xcode-select --install
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#    echo "Installing oh-my-zsh..."
#    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#    exit
    echo "Installing packages from homebrew..."
    brew install htop neofetch cocoapods
    echo "Installing Android Studio..."
    brew install --cask android-studio
    echo "Installing Sourcetree..."
    brew install --cask sourcetree
    echo "Installing Telegram..."
    brew install --cask telegram-desktop
    echo "Installing VLC..."
    brew install --cask vlc
    echo "Installing iTerm2..."
    brew install --cask iterm2
    echo "Installing Visual Studio Code from homebrew..."
    brew install --cask visual-studio-code
    echo "Installing Firefox from homebrew..."
    brew install --cask firefox
    echo "Installing Spotify from homebrew..."
    brew install --cask spotify
    echo "Installing Rectangle from homebrew..."
    brew install --cask rectangle
    echo "Installing Docker from homebrew..."
    brew install --cask docker
    echo "Installing Notion from homebrew..."
    brew install --cask notion
    echo "Installing Discord from homebrew..."
    brew install --cask discord
    echo "Installing Balena Etcher from homebrew..."
    brew install --cask balenaetcher
    echo "Installing vim configuration..."
    git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
    sh ~/.vim_runtime/install_awesome_vimrc.sh
    echo "Installing powerline fonts..."
    git clone https://github.com/powerline/fonts.git --depth=1
    cd fonts
    ./install.sh
    cd ..
    rm -rf fonts
    echo "----------------------------------"
    echo "|             All Done!          |"
    echo "----------------------------------"
else
    echo "Installation starts for Linux"
    echo "Installing necessary tools..."
    sudo apt install curl gcc make neofetch htop cmatrix vim zsh apt-transport-https ca-certificates gnupg lsb-release
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    exit
    echo "Installing vim configuration..."
    git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
    sh ~/.vim_runtime/install_awesome_vimrc.sh
    echo "Installing powerline fonts..."
    git clone https://github.com/powerline/fonts.git --depth=1
    cd fonts
    ./install.sh
    cd ..
    rm -rf fonts
    echo "Installing docker..."
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io
    echo "----------------------------------"
    echo "|             All Done!          |"
    echo "----------------------------------"
fi

