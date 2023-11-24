# Welcome!
My own customized vimrc, bashrc, bash\_profile built from scratch!
# Instructions
You could just do symbolic linking using (`ln -s main_config/.vimrc .vimrc`) instead of actually copying as below:

- [All systems] cp .vimrc, .ideavimrc, .inputrc to home folder
- [Mac] cp .bash\_profile\_mac to home folder as .bash\_profile
- [Ubuntu/Linux] cp .bash\_profile and .bashrc to home folder
# Info
- When logging in remotely .bash\_profile gets sourced (login shell).
- When opening a new terminal manually/interactively (non-login shell), .bashrc gets sourced.
- Do not init conda after installing as init code is already present in .bashrc, but need to source ~/.bashrc!
