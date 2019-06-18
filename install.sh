
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
cp -rf .bashrc $HOME
