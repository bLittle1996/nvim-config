# nvim-config
My NeoVim configuration. It includes my plugins, keymaps, and themes.

## Prerequisite

- neovim 0.11.x

## Setup

1. Clone this repository to `~/.config/nvim`
2. Run `nvim`
3. Close and re-open `nvim` to ensure plugins are correctly loaded
4. It really is that simple!

### Nice to haves

If you want to install the `ltex-ls` for spell-checking and such in .gitcommits and markdown files, you'll need to ensure you have Java 11+ installed.

Consider using `jenv` to manage JDK versions for you.

If you install it via Linux Homebrew, you'll likely need to add this to your `.bashrc`:
`export JAVA_HOME="/home/linuxbrew/.linuxbrew/Cellar/openjdk/20/libexec/"`

> Example is for OpenJDK 20, you'll need to check the path to the version you've installed.

### Notes

To set up an LSP, open `:Mason` and navigate to the LSP section. Pick the one you want, ensuring you have the pre-reqs (i.e. go installed for gopls).
