#!/bin/bash

read -p "enter your sudo password to continue: " pass
requirements="\033[32m[+] Downloading requirements...\033[0m"

for ((i=0; i<${#requirements}; i++)); do
    echo -ne "${requirements:$i:1}"
    sleep 0.005
done

echo $pass | sudo -S apt install xclip

clone_text="\033[32m[+] Cloning the repo...\033[0m"
for ((i=0; i<${#clone_text}; i++)); do
    echo -ne "${clone_text:$i:1}"
    sleep 0.05
done

git clone https://github.com/hoodietramp/tmux_config.git
cd tmux_config
setup="\033[32m[+] Setting up tmux config...\033[0m"
for ((i=0; i<${#setup}; i++)); do
    echo -ne "${setup:$i:1}"
    sleep 0.05
done

cp updatedtmux.conf ~/.tmux.conf
mkdir -p ~/Scripts
cp updated_vpnIP_VM.sh ~/Scripts/vpnIP_VM.sh

tmux_plugin="\033[32madding tmux plugin...\033[0m"
for ((i=0; i<${#tmux_plugin}; i++)); do
    echo -ne "${tmux_plugin:$i:1}"
    sleep 0.05
done

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "Press Prefix+I to install the plugins"

icons_install="\033[32m[+] Installing icons in terminal...\033[0m"
for ((i=0; i<${#icons_install}; i++)); do
    echo -ne "${icons_install:$i:1}"
    sleep 0.05
done

cd ~/ ; git clone https://github.com/sebastiencs/icons-in-terminal.git
cd icons-in-terminal
./install-autodetect.sh

setup_done="\033[32m[-] D0ne!\033[0m"
for ((i=0; i<${#setup_done}; i++)); do
    echo -ne "${setup_done:$i:1}"
    sleep 0.05
done

exit_txt="\033[32mExiting Terminal Now...\033[0m"
for ((i=0; i<${#exit_txt}; i++)); do
    echo -ne "${exit_txt:$i:1}"
    sleep 0.05
done

echo "open new terminal for the change."
sleep 1
exit