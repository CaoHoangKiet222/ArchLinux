# Installation 🤵

### **Dependencies** 📊

```
sudo pacman -S neovim rofi polybar zsh ranger alacritty dunst copyq feh flameshot pasystray network-manager-applet networkmanager pamixer pulseaudio light gpick gnome-keyring
```

```
yay -Sy picom-animations-git xbanish blueman onlyoffice-bin ibus-bamboo brave firefox visual-studio-code-bin
```

### Colorls :file_folder:

```
gem install colorls
cp $(dirname $(gem which colorls))/yaml/dark_colors.yaml ~/.config/colorls/dark_colors.yaml
```

### Neovim :heart_eyes:

```
yay -Sy cargo go luarocks ruby composer php npm nodejs python python-pip xsel
sudo pacman -Sy java java-runtime-common java-environment-common jdk-openjdk jre-openjdk wget curl tar gzip prettier stylua tidy yamllint flake8 eslint ripgrep-all fd clang htop
sudo npm install markdownlint-cli2 -g
```

### Markdown-preview :zap:

```
sudo npm install markdownlint-cli2 -g
cd .local/share/nvim/site/pack/packer/start/markdown-preview.nvim/
yarn install
```

### Ranger :satisfied:

- Drag, drop, image preview and icons

```
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
git clone https://github.com/mwh/dragon.git; cd dragon; make install
sudo pacman -Sy ueberzug
```

### Alacritty ligatures :stuck_out_tongue_winking_eye:

```
git clone https://github.com/zenixls2/alacritty; cd alacritty
git checkout ligature
cargo build --release
sudo mv /usr/bin/alacritty /usr/bin/alacritty.bak
sudo cp ./target/release/alacritty /usr/bin
```

### Polybar Config 🌇

```
git clone https://github.com/CaoHoangKiet222/ArchLinux.git
```

## Gruvbox Theme :jack_o_lantern:

![image](https://github.com/CaoHoangKiet222/ArchLinux/blob/main/polybar/images/gruvbox-config1.png)
![image](https://github.com/CaoHoangKiet222/ArchLinux/blob/main/polybar/images/gruvbox-config2.png)

## Dracula Theme :space_invader:

![image](https://github.com/CaoHoangKiet222/ArchLinux/blob/main/polybar/images/dracula-config1.png)
![image](https://github.com/CaoHoangKiet222/ArchLinux/blob/main/polybar/images/dracula-config2.png)

## Tokyo Night Theme :gem:

![image](https://github.com/CaoHoangKiet222/ArchLinux/blob/main/polybar/images/tokyo-config1.png)
![image](https://github.com/CaoHoangKiet222/ArchLinux/blob/main/polybar/images/tokyo-config2.png)

<h1 align="center">🌟 Good Luck and Cheers! 🌟</h1>
