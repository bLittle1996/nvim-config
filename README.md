# nvim-config
My NeoVim configuration. It includes my plugins, keymaps, and themes.

## Prerequisite

To ensure the TypeScript language server can install correctly, ensure `node` and `npm` are installed.

## Setup

Clone this repository to `~/.config/nvim`

Run the quick-start found at [the Packer repository](https://github.com/wbthomason/packer.nvim#quickstart)

Then, open `nvim` and run `:PackerSync`, reloading `nvim` should have all the plugins and stuff ready to go.

### Nice to haves

If you want to install the `ltex-ls` for spell-checking and such in .gitcommits and markdown files, you'll need to ensure you have Java 11+ installed.

If you install it via Linux Homebrew, you'll likely need to add this to your .bashrc:
`export JAVA_HOME="/home/linuxbrew/.linuxbrew/Cellar/openjdk/20/libexec/"`

> Example is for OpenJDK 20, you'll need to check the path to the version you've installed.
