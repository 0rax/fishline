<p align="center">
    <a href="README.md"><img src="https://raw.githubusercontent.com/0rax/fishline/screenshots/logo.png" width=512 style="margin-bottom:0px"></img></a>
</p>
<h4 align="center">A powerline prompt framework for the fish-shell built in fish-shell</h4>
<p align="center">
    <a href="https://github.com/0rax/fishline/releases/latest"><img src="https://img.shields.io/github/release/0rax/fishline.svg" alt="Latest release"></a>
    <a href="https://gitter.im/0rax/fishline?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge"><img src="https://badges.gitter.im/Join%20Chat.svg" alt="Join the chat at https://gitter.im/0rax/fishline"></a>
</p>

## Preview

![fishline_preview](https://raw.githubusercontent.com/0rax/fishline/screenshots/prompt.png "Fishline Preview")

## Requirements

This framework uses a lot of glyph from Powerline fonts in order to work, you will need to install one of them and select it as your shell font to enjoy this software completely. More information about how to install them can be found in the [Powerline wiki](https://powerline.readthedocs.io/en/latest/installation.html#fonts-installation).

## Installation

### Manually

In order to install fishline, you will need to clone this repository somewhere and specify this path in your `config.fish` file as well as sourcing the `init.fish` file present from the repository.

Here is an example on how to do it, by cloning `fishline` in your `~/.config/fish` folder:

```sh
git clone https://github.com/0rax/fishline.git/ ~/.config/fish/fishline
```

Then modify your `~/.config/fish/config.fish` and add:

```sh
if status is-interactive
    set FLINE_PATH $HOME/.config/fish/fishline
    source $FLINE_PATH/init.fish
end
```

### Using [Fisher](https://github.com/jorgebucaran/fisher)

This is the easiest way to install `fishline` in your fish-shell environment. Fisher will install it and link all the needed functions for you by running the following command:

```sh
fisher install 0rax/fishline
```

This will allow you to use the `fishline` command directly and access to all the possible theming / configuration available as if you installed it manually.

> **NOTE**:
> When installing fishline using Fisher, a file named `fishline-init.fish` will be created in `~/.config/fish/conf.d`.
> If you wish to configure, you should not update this file but instead create a new one to set your configuration variable, just make sure that this file is loaded after it (naming the file `fishline.fish` or `fishline-theme.fish` should work).

## Configuration

To use fishline as your prompt, update or create a `fish_prompt.fish` file in your `functions` folder (`~/.config/fish/functions` by default) to include:

```sh
function fish_prompt
    fishline -s $status
end
```

[More informations about installation and configuration available in the wiki.](https://github.com/0rax/fishline/wiki "Fishline Wiki")

## License

fishline is MIT licensed. See [LICENSE](LICENSE).
