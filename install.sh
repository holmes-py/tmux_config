#!/bin/bash

read -p "enter your sudo password to continue: " pass
requirements="[+] Downloading requirements..."
for ((i=0; i<${#requirements}; i++)); do
    # Print the current digit
    echo -n "${requirements:$i:1}"
    # Wait for 0.5 seconds
    sleep 0.1
done
echo $pass | sudo -S apt install xclip
clone_text="[+] Cloning the repo..."
for ((i=0; i<${#clone_text}; i++)); do
    # Print the current digit
    echo -n "${clone_text:$i:1}"
    # Wait for 0.5 seconds
    sleep 0.1
done
git clone https://github.com/hoodietramp/tmux_config.git
cd tmux_config
setup="[+] Setting up tmux config..."
for ((i=0; i<${#setup}; i++)); do
    # Print the current digit
    echo -n "${setup:$i:1}"
    # Wait for 0.5 seconds
    sleep 0.1
done
cp updatedtmux.conf ~/.tmux.conf
mkdir -p ~/Scripts
cp updated_vpnIP_VM.sh ~/Scripts/vpnIP_VM.sh
tmux_plugin="adding tmux plugin..."
for ((i=0; i<${#tmux_plugin}; i++)); do
    # Print the current digit
    echo -n "${tmux_plugin:$i:1}"
    # Wait for 0.5 seconds
    sleep 0.1
done
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "Press Prefix+I to install the plugins"
icons_install="[+] Installing icons in terminal..."
for ((i=0; i<${#icons_install}; i++)); do
    # Print the current digit
    echo -n "${icons_install:$i:1}"
    # Wait for 0.5 seconds
    sleep 0.1
done
cd ~/ ; git clone https://github.com/sebastiencs/icons-in-terminal.git
cd icons-in-terminal
./install-autodetect.sh
setup_done="[-] D0ne!"
for ((i=0; i<${#setup_done}; i++)); do
    # Print the current digit
    echo -n "${setup_done:$i:1}"
    # Wait for 0.5 seconds
    sleep 0.1
done
exit_txt="Exiting Terminal Now..."
for ((i=0; i<${#exit_txt}; i++)); do
    # Print the current digit
    echo -n "${exit_txt:$i:1}"
    # Wait for 0.5 seconds
    sleep 0.2
done
echo "open new terminal for the change."
sleep 1
exit