# run as ./create_links.sh user hostname
ln -s ~/Projects/main_config/.bash_profile ~/.bash_profile
ln -s ~/Projects/main_config/.bashrc ~/.bashrc
ln -s ~/Projects/main_config/.condarc ~/.condarc
ln -s ~/Projects/main_config/.ideavimrc ~/.ideavimrc
ln -s ~/Projects/main_config/.inputrc ~/.inputrc
ln -s ~/Projects/main_config/.tmux.conf ~/.tmux.conf
ln -s ~/Projects/main_config/.vimrc ~/.vimrc
scp ${1}@${2}:/export/home/${2}1/${1}/\{.wandb_api_key, .openai_api_key\} ~/
