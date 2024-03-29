This Is My Desktop Environment Repo

I hope you like it

## Requirements
- XLib headers - for compiling DWM
- sxhkd - used for keybindings
- acpi - used for displaying battery info in top bar

Optional requirements:
- rofi and rofi-pass - used as a launcher and for password management
- playerctl - adds play/pause keybinds

I use this alongside my dotfiles, available at https://github.com/PeterGottesman/.dotfiles .

## Usage
First, ensure you have the `dwm` submodule checked out. You can do this when cloning with:
```
git clone https://github.com/PeterGottesman/timder.git --recurse-submodules
```

If you already cloned, you can also initialize the submodules with:
```
git submodule update --init --recursive
```

Now, to install everything in this repo simply run:

```
make dwm && make install
make configs
```

After making any modifications to dwm, rerun the first line
above. Modifications to anything in the `configs` will be applied the
next time you restart dwm, no need to rerun `make configs`.
