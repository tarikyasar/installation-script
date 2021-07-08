# Get kernel name
# Darwin for macOS || Linux for Linux

kernel_name=$(uname)

if [ "$kernel_name" = "Darwin" ];
then
    echo "Installation starts for macOS"
    sleep 1
    echo "Installing xcode command line tools..."
    xcode-select --install
    sleep 1
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    sleep 1
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    sleep 1
    echo "Installing packages from homebrew..."
    brew install htop neofetch cocoapods
    sleep 1
    echo "Installing iTerm2..."
    brew install --cask iterm2
    sleep 1
    echo "Installing Visual Studio Code from homebrew..."
    brew install --cask visual-studio-code
    sleep 1
    echo "Installing Firefox from homebrew..."
    brew install --cask firefox
    sleep 1
    echo "Installing Spotify from homebrew..."
    brew install --cask Spotify
    sleep 1
    echo "Installing Rectangle from homebrew..."
    brew install --cask rectangle
    sleep 1
    echo "Installing Docker from homebrew..."
    brew install --cask docker
    sleep 1
    echo "Installing vim configuration..."
    git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
    sh ~/.vim_runtime/install_awesome_vimrc.sh
    sleep 1
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
    sleep 1
    echo "Installing necessary tools..."
    sudo apt install curl gcc make neofetch htop cmatrix vim zsh apt-transport-https ca-certificates gnupg lsb-release
    sleep 1
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    sleep 1
    echo "Installing vim configuration..."
    git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
    sh ~/.vim_runtime/install_awesome_vimrc.sh
    sleep 1
    echo "Installing powerline fonts..."
    git clone https://github.com/powerline/fonts.git --depth=1
    cd fonts
    ./install.sh
    cd ..
    rm -rf fonts
    sleep 1
    echo "Installing docker..."
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io
    echo "----------------------------------"
    echo "|             All Done!          |"
    echo "----------------------------------"
fi

