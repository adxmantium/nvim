# NVIM Setup

## Install instructions

1. Clear out existing nvim config (if you haven't already)

```
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

2. Clone this repo

```
git clone https://github.com/adxmantium/nvim ~/.config/nvim
```

3. (optional) Delete `.git` folder if you wanna add this to your own repo

```
rm -rf ~/.config/nvim/.git
```

4. Start 'er up!

```
nvim
```
