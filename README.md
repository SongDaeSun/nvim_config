# nvim_config
## Installization
### 1) Mac OS
install nvim
~~~
brew install neovim
~~~
### 2) Linux OS
install nvim
~~~
sudo apt update
sudo apt install neovim python-neovim python3-neovim
~~~

### 3) Windows
Just install wsl2(linux)

### make nvim config file
make directory for nvim config files
~~~
mkdir ~/.config/nvim
~~~

download this repo
~~~
git clone https://github.com/SongDaeSun/nvim_config.git
~~~

copy nvim init file
~~~
cp nvim_config/init.vim ~/.config/nvim/init.vim
~~~

### install neovim python packages
~~~
python3 -m pip install --user neovim
~~~

### install nvim plugin manager
~~~
curl -fLo ${XDG_DATA_HOME:-~/.local/share}/nvim/site/autoload/plug.vim \
   --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
~~~
### initial nvim as default 
add commands below to your proper enviroments  
ex) ~/.zshrc, ~/.bashrc, ~/.alias ... etc  
~~~
alias vim="nvim"
alias vi="nvim"
alias vimdiff="nvim -d"
export EDITOR=/usr/local/bin/nvim
~~~


### 1) install CoC for Mac OS
~~~
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -sL install-node.now.sh/lts | bash
~~~

### 2) install CoC for linux OS
~~~
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
~~~

### Install plugins
~~~
nvim +PlugInstall +qall
~~~

### make language server folder
~~~
mkdir /Users/{name}/.config/coc/extensions/node_modules
~~~
ex)
~~~
mkdir /Users/songdaesun/.config/coc/extensions/node_modules
~~~

### 1) C/C++ for CoC in Mac OS
~~~
brew update && brew upgrade
brew install llvm
echo 'export PATH="/usr/local/opt/llvm/bin:$PATH"' >> ~/.zshrc
~~~
in vim, run :CocInstall coc-clangd

### 2) C/C++ for CoC in Linux OS
~~~
sudo apt install clangd-9
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-9 100
~~~
in vim, run ~:CocInstall coc-clangd~

### python for CoC 
~~~
python3 -m pip install --user jedi pylint
~~~
in vim, run :CocInstall coc-python


