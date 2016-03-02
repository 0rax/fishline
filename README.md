fishline
========

[![Join the chat at https://gitter.im/0rax/fishline](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/0rax/fishline?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

**Powerline prompt for Fish Shell in Fish Shell.**

![fishline_preview](https://raw.githubusercontent.com/0rax/fishline/screenshots/prompt.png "Fishline Preview")

Install
-------
Clone fishline where you want, here in the fish's config folder:

`git clone https://github.com/0rax/fishline.git/ ~/.config/fish/fishline`

Set in your `config.fish` this fishline path and source it.
```sh
set FLINE_PATH $HOME/.config/fish/fishline
source $FLINE_PATH/fishline.fish
```

Now call the fishline function with your last status in your `fish_prompt` function
```sh
function fish_prompt
    fishline -s $status
end
```

[More informations about installation and configuration availlable in the wiki.](https://github.com/0rax/fishline/wiki "Fishline Wiki")
