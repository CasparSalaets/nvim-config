# ⚙️ Neovim Configuration

A modern, lightweight, and extensible Neovim setup — built with **Vim compatibility** in mind and powered by **vim-plug**.  
This configuration balances simplicity, speed, and functionality for everyday development.

---

## 🧭 Overview

This setup uses the classic `.vim` configuration syntax, ensuring compatibility with both **Vim** and **Neovim**.  
Most plugins work seamlessly in both editors — with the exception of **CoC (Conquer of Completion)**, which requires Neovim-specific features.

> 💡 **Tip:**  
> To get the best experience, use Neovim **v0.8+** and install the required dependencies listed below.

---

## 🔌 Plugin Management

All plugins are managed with [**vim-plug**](https://github.com/junegunn/vim-plug).

To install plugins after cloning this config, open Neovim and run:

```vim
:PlugInstall
```

### 📦 Installed Plugins

| Category | Plugin | Description |
|-----------|---------|-------------|
| **Editing** | [tpope/vim-surround](https://github.com/tpope/vim-surround) | Manipulate surrounding characters |
| | [tpope/vim-commentary](https://github.com/tpope/vim-commentary) | Comment/uncomment code easily |
| | [itmammoth/doorboy.vim](https://github.com/itmammoth/doorboy.vim) | Auto-pair brackets and quotes |
| **Navigation** | [preservim/nerdtree](https://github.com/preservim/nerdtree) | File explorer |
| | [preservim/tagbar](https://github.com/preservim/tagbar) | Code navigation sidebar |
| | [ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon) | Quick file navigation |
| **UI / Visuals** | [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline) | Status bar |
| | [rafi/awesome-vim-colorschemes](https://github.com/rafi/awesome-vim-colorschemes) | Color schemes |
| | [ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons) | Developer icons |
| | [ap/vim-css-color](https://github.com/ap/vim-css-color) | Inline CSS color preview |
| | [haishanh/night-owl.vim](https://github.com/haishanh/night-owl.vim) | Night Owl theme |
| **Completion / Syntax** | [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim) | Autocompletion (IntelliSense) |
| | [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Modern syntax highlighting |
| **Search / Telescope** | [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim) | Lua utilities (dependency) |
| | [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| | [nvim-telescope/telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim) | File browser for Telescope |
| **Terminal** | [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) | Built-in floating terminal |

---

## 🧰 Features

✅ **Relative line numbers** for efficient navigation  
✅ **Auto-completion** with [CoC](https://github.com/neoclide/coc.nvim)  
✅ **Telescope integration** for searching and browsing  
✅ **Harpoon** for quick file access  
✅ **NERDTree** and **Tagbar** for file and code structure navigation  
✅ **ToggleTerm** for a floating terminal inside Neovim  
✅ **Airline** and **Devicons** for a polished status bar  
✅ **CSS color preview**, auto-pairs, and syntax highlighting with Treesitter  

---

## 🖥️ Environment Setup

This configuration works across Linux, macOS, and Windows (via WSL).

### 🐧 On WSL (Recommended)

I primarily use Neovim through the **Windows Subsystem for Linux (WSL)**.  
To install WSL with Ubuntu:

```powershell
wsl --install
```

Then, install Neovim inside your Linux distribution:

```bash
sudo apt update && sudo apt install neovim -y
```

---

## ⚙️ Installation

1. **Clone this repository:**

   ```bash
   git clone https://github.com/yourusername/nvim-config ~/.config/nvim
   ```

2. **Open Neovim:**

   ```bash
   nvim
   ```

3. **Install plugins:**

   Inside Neovim, run:

   ```vim
   :PlugInstall
   ```

4. **(Optional) Update syntax parsers:**

   ```vim
   :TSUpdate
   ```

---

## 🔠 Fonts & Icons

Some plugins (like `vim-devicons` and `airline`) require a **Nerd Font** to display icons correctly.  
You can download one here: [https://www.nerdfonts.com/](https://www.nerdfonts.com/)

Recommended fonts:
- FiraCode Nerd Font  
- JetBrainsMono Nerd Font  
- Cascadia Code Nerd Font  

---

## ⚡ Keybindings

| Key | Action |
|------|--------|
| `<C-f>` | Toggle NERDTree |
| `<F8>` | Toggle Tagbar |
| `<C-n>` | Toggle floating terminal |
| `<Leader>ff` | Open Telescope file finder |
| `<Leader>a` | Add current file to Harpoon |
| `<Leader>m` | Toggle Harpoon quick menu |
| `<Leader>1-4` | Navigate to Harpoon files |
| `<Leader>t` | Open terminal 1 (Harpoon) |
| `<Leader>r` | Remove current file from Harpoon |

> **Note:**  
> The **leader key** is set to the **spacebar (` `)**.

---

## 🧩 Dependencies

To ensure all plugins work properly, install the following tools:

```bash
sudo apt install nodejs npm python3-pip
```

Then install CoC dependencies (inside Neovim):

```vim
:CocInstall coc-json coc-tsserver coc-html coc-css coc-pyright
```

---

## 🎨 Theme Customization

You can easily switch between color schemes:

```vim
colorscheme torte
" or
colorscheme night-owl
```

Explore more options under:
```
~/.config/nvim/plugged/awesome-vim-colorschemes/colors/
```

---

## 🧠 Notes

- Tested on **Neovim 0.9+**
- Designed for **WSL Ubuntu**
- Plugins are managed with **vim-plug**
- Fully supports **UTF-8** and **true color**

---
`:wq`
