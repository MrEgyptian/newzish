
r="\033[91m"
g="\033[92m"
y="\033[93m"
b="\033[94m"
rbg="\033[41m"
bbg="\033[40m"
echo -e "\n$b updating"
apt update -y>/dev/null
echo -e "\n$b upgrading"
apt upgrade -y>/dev/null
echo -e "\n installing text editors"
apt install nano figlet -y >/dev/null
echo -e "$r removing $g termux welcome screen"
sleep 2
echo -e "$g installing theme"
sleep 1
cp -rf .bashrc $HOME
sleep 1
echo -e "$g installing extra keys"
sleep 3

mkdir .termux
echo "extra-keys = [['ESC','/','-','HOME','UP','END','PGUP','#','$'],['TAB','CTRL','$PREFIX','LEFT','DOWN','RIGHT','PGDN','<','>']]" >.termux/termux.properties
figlet "finished"
