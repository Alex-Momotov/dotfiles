rm -rf ~/.bashrc
rm -rf ~/.bash_profile
rm -rf ~/.custom_commands
rm -rf ~/.sshrc
rm -rf ~/.vimrc

ln -s `pwd`/settings/.bashrc ~/.bashrc
ln -s `pwd`/settings/.bash_profile ~/.bash_profile
ln -s `pwd`/settings/.custom_commands ~/.custom_commands
ln -s `pwd`/settings/.sshrc ~/.sshrc
ln -s `pwd`/settings/.vimrc ~/.vimrc
