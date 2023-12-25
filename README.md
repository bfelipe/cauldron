# Cauldron


			    (
	                   )  )
	               ______(____
	              (___________)
	               /         \
	              /           \
	             |             |				
	         ____\             /____
	        ()____'.__     __.'____()
	        jgs  .'` .'```'. `-.
	            ().'`       `'.()
                     _     _                 
                    | |   | |                
      ___ __ _ _   _| | __| |_ __ ___  _ __  
     / __/ _` | | | | |/ _` | '__/ _ \| '_ \ 
    | (_| (_| | |_| | | (_| | | | (_) | | | |
     \___\__,_|\__,_|_|\__,_|_|  \___/|_| |_|


## What is Cauldron?

Every mage needs a cauldron to make magic. Software developers is no different.
Cauldron is a Neovim profile written entirely on lua, aiming to turn Neovim as close as possible to a full IDE for software development.

## Compatible

- Neovim v0.9.4

## Plugins

Cauldron rely on specific plugins to all sort of tasks, from fuzzy search, to language servers or plugin management.
These are the ones used in this project. Plugins may be added or removed over time, if better ones is found.

 - lazy.vim
 - nvim-treesitter
 - rose-pine/vim
 - undrotree
 - telescope.vim
	 - plenary.vim
- lsp-zero.vim
	- nvim-lspconfig
	- mason.vim
	- mason-lspconfig.vim
	- vim-cmp
	- cmp-nvim-lsp
	- LuaSnip
- ThePrimeagen/harpoon

## Usage

Once you start nvim, Lazy will automatically install all mentioned plugins above.
Currently Cauldron is configured to only install syntax highlight and language server for: C, C++, Python, Go, Rust and Lua.
Feel free to change as you please.

## Installation

Installation can be done using 'install.sh' tool. It allows you to update current cauldron installation from latest version and backup current configurations.
You can use this tool as follow:

	./install.sh # this will trigger default execution, following different prompts based on your current installation.

## Backup restoration

In case you installed cauldron using backup mode, you can restore it using 'restore.sh' tool.

	./restore.sh # this will clear current non-working installation and restore user latest configuration profile from 'backup' folder.

## Author
- [Bruno Felipe](https://gitlab.com/bfelipe)
