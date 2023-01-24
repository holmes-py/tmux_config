# This is my tmux config:


### Features: 
1. Show VPN IP address in status bar when connected to VPN.
2. Supports mouse functions. i.e. Mouse clicks can be used to switch splits, windows, sessions etc. Scrolling with mouse wheel activates copy mode and you can select using mouse cursor.


Update 24/01/2023:
- Cleaned up a bit, it was a homemade noodle soup before, now it's like out of a restaurant noodle soup.
- Updated colors a bit, finally added tmux plugins.
- Removed the bashrc, as it was overwriting the user's bashrc. 

Potential TODO:
- I believe my color choices can be boring at times, so feel free to send a PR if you have a better color scheme.

### Screenshots:
Default look with Tunnel and SSH scripts. Remove those if you think it's too messy.

![Screenshot](https://user-images.githubusercontent.com/54495695/214239102-7efff567-275a-479e-a737-a804008823a7.png)

---

## Installation:
- For clipboard to work, please install xclip as well.  
```bash 
sudo apt install xclip
git clone https://github.com/holmes-py/tmux_config.git
cd tmux_config
cp tmux.conf ~/.tmux.conf
cp VPN.sh ~/vpnIP_VM.sh
```
- To make the plugins work, you need to install tmux plugin manager.
- To install tmux plugin manager, run the following command:
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
- Then press `prefix + I` to install the plugins.
.

Refer to [tmux plugin manager](https://github.com/tmux-plugins/tpm) for more information.
