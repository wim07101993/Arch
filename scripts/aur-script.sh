# create download directory
if [ ! -d "/home/wim/Downloads/AUR/" ]; then
		mkdir /home/wim/Downloads/AUR/ -p
fi

cd /home/wim/Downloads/AUR/

# clone the package
git clone http://aur.archlinux.org/$1.git

cd $1

# build package
makepkg -Acsf

# install package
sudo pacman -U *.pkg.tar.xz
sudo rm /home/wim/Downloads/AUR/$1/ -r