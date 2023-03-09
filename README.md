# DOTFILES


![cover_img_1]


![cover_img_2]


![cover_img_3]


## Kitty


![kitty_img]


### Requirements
* [zsh]
* [HackNerdFont]

### Installation 
Copy the "kitty" folder into the ".config" folder.


## NeoVIM


![nvim_img]


### Requirements
* [Packer]
* [Node]
* [NeoVIM] 

### Installation
* Install Packer.
* Install Node.
* Install NeoVIM.
* Copy the "nvim" folder into the ".config" folder.


![NeoVIM Tree]


* lua folder.
    * lua: This folder contains the configuration profile.

    * lua/dee: This folder contains the configuration.
    * lua/dee/packer.lua: In this file we add our plugins to install, to install we use `:PackerInstall` and `:PackerUpdate` on normal NeoVIM mode to update them. 
    * lua/dee/remap.lua: In this file we add our keyboard shortcuts for some NeoVIM functions.
    * lua/dee/settings: In this file are the general NeoVim settings, such as adding numbering to the left of each line.
    * lua/dee/init.lua: In this file we indicate that we will use the configurations previously defined in this profile.
* after folder.
    * after/plugin: In this folder is the configuration and keyboard shortcuts of each plugin. It is named as `plugin_name.lua`.
* spell folder.
    * spell: In this folder are the [files] needed for spell checking.
        * To use a language, use `:set spell spelllang=en`.
        * To enable spell checking use `:set spell` and `:set nospell` to disable it.
* init file.
    * init.lua: The profile to be used is configured in this file.


## zsh


![zsh_img]


### Requirements.
* [PowerLevel10K]
* [zsh]
* [bat]
* [lsd]
* [zsh syntax highlighting]
* [zsh autosuggestions]
* [zsh sudo plugin]
* [fzf]
* [scrub]
* [HackNerdFont]


### Installation.
* Install the requirements.
* Change your user's default shell to a zsh. You can use `usermod -s $(which zsh) <your-username>`.
* Copy the `.zshrc` file to your `home` directory.
* Create a symbolic link for the root user of `.zshrc` in the `root` folder (you can use the following command as root: `ln -s /home/<you_user>/.zshrc /root/.`) and finally reinstall and set PowerLevel10k as root in the `/root` folder.







[zsh]: https://wiki.debian.org/Zsh
[HackNerdFont]: https://www.nerdfonts.com/
[Packer]: https://github.com/wbthomason/packer.nvim
[Node]: https://nodejs.org/en/
[NeoVIM]: https://neovim.io/
[PowerLevel10K]: https://github.com/romkatv/powerlevel10k
[bat]: https://github.com/sharkdp/bat
[lsd]: https://github.com/Peltoche/lsd
[zsh syntax highlighting]: https://packages.debian.org/bullseye/zsh-syntax-highlighting
[zsh autosuggestions]: https://packages.debian.org/bullseye/zsh-autosuggestions
[zsh sudo plugin]: https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/sudo/sudo.plugin.zsh
[fzf]: https://github.com/junegunn/fzf
[scrub]: https://packages.debian.org/bullseye/scrub
[files]: 'http://ftp.vim.org/vim/runtime/spell/'

[NeoVIM Tree]: ./images/nvim_tree.png
[cover_img_1]: ./images/cover_01.png
[cover_img_2]: ./images/cover_02.png
[cover_img_3]: ./images/cover_03.png
[kitty_img]: ./images/kitty.png
[nvim_img]: ./images/nvim.png
[zsh_img]: ./images/zsh.png


