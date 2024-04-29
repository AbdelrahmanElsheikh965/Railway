#! /bin/bash

# bash /workspaces/Railway/prepare.sh

eval "sudo apt update"

sudo "apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev"

eval "curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash"

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc

echo 'eval "$(rbenv init -)"' >> ~/.bashrc

eval "source ~/.bashrc"

eval "type rbenv"

eval "rbenv install -l"

eval "rbenv install 3.3.0"

eval "rbenv global 3.3.0"

eval "ruby -v"

echo "gem: --no-document" > ~/.gemrc

eval "gem install bundler"

eval "gem env home"

eval "gem search '^rails$' --all"

eval "gem install rails -v 7.1.3.2"

eval "rbenv rehash"

eval "rails -v"

# subshell

(
  cd ~/.rbenv &&
  eval "git pull"
)

# rails new .
# rails s