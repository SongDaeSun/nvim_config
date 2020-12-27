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
