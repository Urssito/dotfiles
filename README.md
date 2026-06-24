# dotfiles

Cuando estés en tu nueva instalación fresca de Arch Linux, el proceso de magia para que todo quede "tal cual" es muy rápido:

Instalar los programas de golpe:

Bash


sudo pacman -S --needed - < pkglist.txt
yay -S --needed - < aurpkglist.txt
Restaurar las configuraciones:
Clonas tu repositorio bare asegurándote de no crear conflictos:

Bash


git clone --bare git@github.com:tu-usuario/tus-dotfiles.git $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config checkout
(Si te da un error al hacer checkout porque ya existen archivos por defecto como .bashrc, simplemente bórralos o muévelos y vuelve a ejecutar el checkout).
