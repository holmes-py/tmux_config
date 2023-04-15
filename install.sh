#!/bin/bash

read -p "enter your sudo password to continue: " pass
requirements="[+] Downloading requirements..."

for ((i=0; i<${#requirements}; i++)); do
    echo -n "${requirements:$i:1}"
    sleep 0.07
done
echo

echo $pass | sudo -S apt install xclip

clone_text="[+] Cloning the repo..."
for ((i=0; i<${#clone_text}; i++)); do
    echo -n "${clone_text:$i:1}"
    sleep 0.07
done
echo

git clone https://github.com/hoodietramp/tmux_config.git
cd tmux_config
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
    echo -ne "${tmux_plugin:$i:1}"
    sleep 0.07
done
echo

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "Press Prefix+I to install the plugins"

icons_install="[+] Installing icons in terminal..."
for ((i=0; i<${#icons_install}; i++)); do
    echo -ne "${icons_install:$i:1}"
    sleep 0.07
done
echo

cd ~/ ; git clone https://github.com/sebastiencs/icons-in-terminal.git
cd icons-in-terminal
./install-autodetect.sh

setup_done="[-] D0ne!"
for ((i=0; i<${#setup_done}; i++)); do
    echo -ne "${setup_done:$i:1}"
    sleep 0.07
done
echo

exit_txt="Exiting Script Now..."
for ((i=0; i<${#exit_txt}; i++)); do
    echo -ne "${exit_txt:$i:1}"
    sleep 0.07
done
echo

echo "open new terminal for the change."

exit