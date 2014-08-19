fishline
========

**Powerline prompt for Fish Shell in Fish Shell.**

Install
-------
Clone fishline where you want:

`git clone https://github.com/0rax/fishline.git/ ~/.config/fish/`

Set in your `config.fish` this fishline path and source it.
```sh
set FLINE_PATH $HOME/.config/fish/fishline
source $FLINE_PATH/fishline.fish
```

Now call the fishline function with your last status in your `fish_prompt` function
```sh
function fish_prompt
    fishline $status
end
```

Config
------

### Choose a theme
You can choose a theme within those availlable in this repository or by creating yours.

To use use it just source it in your `config.fish`
```sh
source $FLINE_PATH/themes/default.fish
```
You can change a specific color by overwritting the matching variable after sourcing your theme
```sh
source $FLINE_PATH/themes/default.fish
set FLINE_BG_HOME 26A
set FLINE_FG_PWD normal
```

### Customize your prompt
You can customize your prompt using the FISH_PROMPT variable
```sh
set FLINE_PROMPT STATUS PWD WRITE N ARROW
```
