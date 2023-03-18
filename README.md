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
