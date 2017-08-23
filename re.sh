#!/bin/bash 

# bash_profile
cp .bash_profile ~
touch ~/.profile
# system setting

# vim
cp .vimrc ..
vim +PluginInstall +qall
# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# install application
  # install basic application
brew install wget
brew install ssh-copy-id
brew install htop
brew install ffmpeg
brew install jq
brew install gpg
brew install mysql
brew install redis
brew cask install iterm2
brew cask install telegram
brew cask install vlc
brew cask install firefox-zh-tw
brew cask install google-chrome
  # install rvm
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
source ~/.bash_profile
  # install ruby
rvm install ruby
  # install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
echo 'export NVM_DIR="$HOME/.nvm"'$"\n"'[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm' >> ../.bash_profile
source ~/.bash_profile
  # install node
nvm install node
  # install gem
gem install rails
gem install nokogiri
gem install redis
gem install sinatra
gem install compass
gem install mysql2
  # install npm-package
npm install -g coffee-script
npm install -g type-script
npm install -g uglify-js
  # install science apps
brew install R
brew install pip3
brew install scipy
brew install numpy
pip3 install scikit-learn
pip3 install --upgrade tensorflow
pip3 install keras
  # install crystal
brew install crystal-lang
brew install crystal-icr
