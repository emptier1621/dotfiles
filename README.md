# DOTFILES


## Kitty


### Requirements
* zsh
* HackNerdFont

### Installation 
Copy the "kitty" folder into the ".config" folder.


## NeoVIM


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
    * lua: This folder contains the configuration profile.
    * lua/dee: This folder contains the configuration.
    * lua/dee/packer.lua: In this file we add our plugins to install, to install we use `:PackerInstall` and `:PackerUpdate` on normal NeoVIM mode to update them. 
    * lua/dee/remap.lua: In this file we add our keyboard shortcuts for some NeoVIM functions.
    * lua/dee/settings: In this file are the general NeoVim settings, such as adding numbering to the left of each line.
    * lua/dee/init.lua: In this file we indicate that we will use the configurations previously defined in this profile.
    * after/plugin: In this folder is the configuration and keyboard shortcuts of each plugin. It is named as `plugin_name.lua`.
    * spell: In this folder are the [files] needed for spell checking.
        * To use a language, use `set spell spelllang=en`.
        * To enable spell checking use `set spell` and `set nospell` to disable it.
    

[NeoVIM Tree]: ./images/nvim_tree.png
[files]: 
