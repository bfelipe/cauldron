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

## Requirement

- Neovim v0.9.0

## Plugins

Cauldron rely on specific plugins to all sort of tasks, from fuzzy search, to language servers or plugin management.
These are the ones used in this project. Plugins may be added or removed over the time, if better ones if found.

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
- vim-fugitive

## Usage

Once you start nvim Lazy will start automatically installing all the mentioned plugins above, by treesitter language highlight installation.
After that is finished you must execute Mason to install the language servers.
Currently Cauldron is configured to only install syntax highlight and language server for: C, C++, Python, Go, Rust and Lua.
Feel free to change as you please to add or remove configurations for the languages you work with.

## Author
- [Bruno Felipe](https://gitlab.com/bfelipe)