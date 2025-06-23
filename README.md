# Neovim Configuration

## Vim Compatibility

This configuration is written in `.vim` syntax, so most of the plugins work seamlessly in standard Vim as well. However, one notable exception is **Conquer of Completion (CoC)**, which requires Neovim-specific functionality.

> **Important**  
> Some plugins—such as CoC—depend on external tools like `pip3`, `nodejs`, and `npm`. To display icons correctly in the UI, a Nerd Font is also required.

## Plugin Management

All plugins are managed using [vim-plug](https://github.com/junegunn/vim-plug).

### Installed Plugins

- [vim-surround](https://github.com/tpope/vim-surround)  
- [nerdtree](https://github.com/preservim/nerdtree)  
- [vim-commentary](https://github.com/tpope/vim-commentary)  
- [vim-airline](https://github.com/vim-airline/vim-airline)  
- [vim-css-color](https://github.com/ap/vim-css-color)  
- [awesome-vim-colorschemes](https://github.com/rafi/awesome-vim-colorschemes)  
- [vim-devicons](https://github.com/ryanoasis/vim-devicons)  
- [vim-terminal](https://github.com/tc50cal/vim-terminal)  
- [doorboy.vim](https://github.com/itmammoth/doorboy.vim)  
- [tagbar](https://github.com/preservim/tagbar)  
- [tokyonight-vim](https://github.com/ghifarit53/tokyonight-vim)  
- [coc.nvim](https://github.com/neoclide/coc.nvim)  
- [vim-colors-xcode](https://github.com/arzg/vim-colors-xcode)  
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)  
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)  

## Environment

> **Note**  
> I primarily use Neovim through the **Windows Subsystem for Linux (WSL)**.  
> To install WSL, open a Windows terminal (I use PowerShell) and run:  
> ```shell
> wsl --install
> ```  
> My Linux distro of choice is **Kali**, though any other should work just fine.
