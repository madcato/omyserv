set -e

ascii_art='  ____   _____ ___.__. ______ ______________  __
 /  _ \ /     <   |  |/  ___// __ \_  __ \  \/ /
(  <_> )  Y Y  \___  |\___ \\  ___/|  | \/\   / 
 \____/|__|_|  / ____/____  >\___  >__|    \_/  
             \/\/         \/     \/             
'

echo -e "$ascii_art"
echo "=> Omyserv is for fresh Ubuntu 24.04 installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning Omyserv repository..."
rm -rf ~/.local/share/omyserv
git clone https://github.com/madcato/omyserv.git ~/.local/share/omyserv >/dev/null
if [[ $OMYSERV_REF != "master" ]]; then
	cd ~/.local/share/omyserv
	git fetch origin "${OMYSERV_REF:-stable}" && git checkout "${OMYSERV_REF:-stable}"
	cd -
fi

echo "Installation starting..."
source ~/.local/share/omyserv/install.sh 