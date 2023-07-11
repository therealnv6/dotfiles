# dotfiles

<img src="https://raw.githubusercontent.com/therealnv6/dotfiles/main/waybar/waybar/fakecarbon-fw-bottom/assets/image.png" 
    width="60%" 
    align="right">
<br>

<img src="https://raw.githubusercontent.com/therealnv6/dotfiles/main/waybar/waybar/fakecarbon-fw-top/assets/image.png" 
    width="60%" 
    align="right">
<br>

<img src="https://raw.githubusercontent.com/therealnv6/dotfiles/main/.assets/screenshot-1.png" 
    width="60%" 
    align="right">
<br>

these are my personal dotfiles, should work flawlessly on any other system as
long as you have all of the required dependencies. most of it is based on
[fakecarbon](https://github.com/therealnv6/fakecarbon.conf), take a look at that
project for further information and credits.

# dependencies

- [waybar](/waybar/waybar): there are 3 themes in my waybar config, so feel free
  to check it out!
- [hypr](/hypr): i'm using hyprland in these dotfiles, you could switch this out
  for something like `sway` or anything else that's supported by waybar, but
  you'll have to update the waybar workspace configuration accordingly.
- [kitty](/kitty)
- [tofi](/tofi)
- ~~[fish](/fish)~~: i previously used fish, but switched to zsh.

# wallpapers

wallpapers are fetched dynamically from [wallhaven](wallhaven.cc), these are
always randomly selected based on the `WH_QUERY` environment variable. it's
recommended to set this variable at startup, like so:

```
export WH_QUERY="landscape"

# optional, to use things like explicit images.
export WH_API_KEY=<key>
```

this script can be found
[here](https://github.com/therealnv6/dotfiles/blob/main/hypr/paper-wallhaven.sh).

# credits

- [cxOrz](https://github.com/cxOrz/dotfiles-hyprland), initially based
  `fakecarbon-fw` on their waybar theme, with adjusted color scheme, icons, and
  script.
