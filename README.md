## 🔒 Requirement

- `stow`
- `git`

## 📦 Installation

Clone into your `$HOME` directory

```bash
git clone https://github.com/CaoHoangKiet222/ArchLinux
```

Change directory to `ArchLinux/config`

```bash
cd ArchLinux/config
```

To install a package configuration, list all folders'name in directory `ArchLinux/config` and `stow` the config you want

```bash
stow nvim -t ~
```

In order to prevent `GNU Stow` from collapsing multiple symbolic links to the same file or directory into a single link, use `--no-folding` option

```bash
stow -t ~ --no-folding alacritty
```

This option is useful if you want to keep the symbolic links in your package directory separate, rather than having them all be merged into a single link

In order to install all packages

```bash
stow -t ~ *
```

## Gruvbox Theme :jack_o_lantern:

![image](https://github.com/CaoHoangKiet222/ArchLinux/blob/main/config/polybar/.config/polybar/images/gruvbox-config1.png)
![image](https://github.com/CaoHoangKiet222/ArchLinux/blob/main/config/polybar/.config/polybar/images/gruvbox-config2.png)

## Dracula Theme :space_invader:

![image](https://github.com/CaoHoangKiet222/ArchLinux/blob/main/config/polybar/.config/polybar/images/dracula-config1.png)
![image](https://github.com/CaoHoangKiet222/ArchLinux/blob/main/config/polybar/.config/polybar/images/dracula-config2.png)

## Tokyo Night Theme :gem:

![image](https://github.com/CaoHoangKiet222/ArchLinux/blob/main/config/polybar/.config/polybar/images/tokyo-config1.png)
![image](https://github.com/CaoHoangKiet222/ArchLinux/blob/main/config/polybar/.config/polybar/images/tokyo-config2.png)

<h1 align="center">🌟 Good Luck and Cheers! 🌟</h1>
