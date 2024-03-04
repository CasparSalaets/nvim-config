# nvim-config


## General information
When I started programming in neovim I watched a guide by [NeuralNine](https://github.com/NeuralNine/config-files) on how to setup nvim with a config file. So my config will mostly be based on his' 
This is mainly the reason my config file is written in a '.vim' format rather than '.lua'.

For this config to work it is required to install [vim-plug](https://github.com/junegunn/vim-plug) and some additional packages regarding the autocomplete of python, the programming language I use. 

## Features
One of the most handy featurs of this config in my opinion is the [Nerd-Tree](https://github.com/preservim/nerdtree). 
In this config it is bound to Ctrl + t. This will open a file explorer in nvim itself (this plugin is featured in the NeuralNine tutorial).
The autocomplete is a bit of a hassle to install since the [plugin](https://github.com/preservim/nerdtree) you have to install is not everything. You have to install an additional package for the language you will be programming in.
The last addition I added was the autoclose. This plugin closes all parentheses automatically making this configuration in my eyes an exelent competitor against modern day text editors and IDE's.

> [!NOTE]
> Lastly I should mention that I only use neovim on a Windows Subsystem for Linux or shortly [wsl](https://learn.microsoft.com/en-us/windows/wsl/install)
You can install this simply in a windows terminal (I personally use PowerShell) by typing 'wsl --install'.
