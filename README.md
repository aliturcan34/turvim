# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Extension install location
Extensions are installed in ~/.local/share/nvim/lazy/

Below are some manual setup instructions 

## Setting up syntax highlighting for a language 
For syntax highlighting we need treesitter parsers. A list of parsers can be found here https://tree-sitter.github.io/tree-sitter/
### Compiling a parser and giving it to nvim-treesitter
1. Clone (or download) your selected parsers repo.
2. To compile your parser run `gcc -o c_sharp.so -shared src/parser.c src/scanner.c -Os -I./src`
  1. Note that the outputs name should match what nvim-treesitter looks for
  2. The list can be found here in the list of supported languages https://github.com/nvim-treesitter/nvim-treesitter
3. Copy your compiled parser (c_sharp.so) into ~/.local/share/nvim/lazy/nvim-treesitter/parse
4. You should now have syntax highlighting assuming ~/.local/share/nvim/lazy/nvim-treesitter/queries/c_sharp/ have the necessary queries.
  1. If not you can find the queries in https://github.com/nvim-treesitter/nvim-treesitter/tree/master/queries

## Setting up lsp for c#
First install lsps on windows and copy contents over to their corresponding linux locations
1. Download omnisharp release for your platform
2. Copy the contents into ~/.local/share/nvim/mason/packages/omnisharp/libexec/
3. This way mason should have the correct binaries
