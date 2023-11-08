#!/bin/bash

requirements="[+] Downloading requirements..."

for ((i=0; i<${#requirements}; i++)); do
    echo -n "${requirements:$i:1}"
    sleep 0.07
done
echo

sudo apt install xclip

setup="[+] Setting up tmux config..."
for ((i=0; i<${#setup}; i++)); do
    echo -n "${setup:$i:1}"
    sleep 0.07
done
echo

cp updatedtmux.conf ~/.tmux.conf
mkdir -p ~/Scripts
cp updated_vpnIP_VM.sh ~/Scripts/vpnIP_VM.sh
chmod +x ~/Scripts/vpnIP_VM.sh

tmux_plugin="adding tmux plugin..."
for ((i=0; i<${#tmux_plugin}; i++)); do
    echo -n "${tmux_plugin:$i:1}"
    sleep 0.07
done
echo

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "Press Prefix+I to install the plugins"

icons_install="[+] Installing icons in terminal..."
for ((i=0; i<${#icons_install}; i++)); do
    echo -n "${icons_install:$i:1}"
    sleep 0.07
done
echo

cd ~/ ; git clone https://github.com/sebastiencs/icons-in-terminal.git
cd icons-in-terminal
./install-autodetect.sh

setup_done="[-] D0ne!"
for ((i=0; i<${#setup_done}; i++)); do
    echo -n "${setup_done:$i:1}"
    sleep 0.07
done
echo

exit_txt="Exiting Script Now..."
for ((i=0; i<${#exit_txt}; i++)); do
    echo -n "${exit_txt:$i:1}"
    sleep 0.07
done
echo

echo "open new terminal for the change."

exit
