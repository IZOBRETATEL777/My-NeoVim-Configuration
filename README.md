# My NeoVim Configuration

*My Neovim (nvim) configuration for education and development.* 



![image-20210602141837993](screens/screen-1.png)

------

### Features:

- Supported languages: **C/C++**, **Python,** **Java**, **C#**. Basic support of HTML/CSS, Markdown and others
- Autocomplete, linter and snippets
- Project explorer and session managment
- Mouse support
- Terminal background support

![screen-2](screens/screen-2.png)



### Requirements

- `Neovim v0.4.0`or higher

- `NodeJS >= 12`

- `ctags`

- `pynvim`

- `clangd`

- NERD-patched font for terminal

  

### Installation

#### Dependencies

If your machine on Debian/Ubuntu based Linux distro you can just run to install **neovim** :

```bash
sudo apt install neovim
```

 If you want to use the latest version and your distro supports Ubuntu PPA you can install **neovim** using this [PPA](https://launchpad.net/~neovim-ppa/+archive/ubuntu/unstable):

```bash
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
```

You can also use snap

```bash
sudo snap install --edge nvim --classic
```

[Other methods of installation are available in the official repository of Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)


There are several ways of installing **NodeJS**:

 - [NVM](https://github.com/nvm-sh/nvm) - one of the easiest way
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
# restart terminal (https://github.com/nvm-sh/nvm#troubleshooting-on-linux)
nvm install --lts
```
**Warning!** It can cause problems if you are using Neovim over SSH session.

 - Downloading ```tar.xz``` from [official website](https://nodejs.org/en/) 
 - via [NodeSource Node.js Binary Distributions](https://github.com/nodesource/distributions/blob/master/README.md) by a package manager

**ctags** can be installed by the next command on Debian/Ubuntu:

```bash
sudo apt install exuberant-ctags
```

Installation of **clangd**:

https://apt.llvm.org/  - `clang` + `clangd`

https://snapcraft.io/clangd - snap

To install **pynvim** in a terminal by the command:

```bash
pip3 install pynvim
```

You can choose any **Nerd font** that is suitable for you from [Patched fonts repository](https://github.com/ryanoasis/nerd-fonts). Installation guide is also provided.

You can also select option that I am using you can execute:

```bash
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
```

And then, select `Dorid Sans Mono Nerd` font in the settings of your terminal.

#### At the end

Put `init.vim` into `~/.config/nvim/` folder. Sometimes there is no `nvim` so you can create it manually. Then run `nvim +PlugInstall` in a terminal and press `y` into dialog screen. All plugins and LSPs will be downloaded automatically.

Also, it is possible to configure Coc using `nvim +CocConfig` command or editing `~/.config/nvim/coc-settings.json`. Personally, I use:

```json
{
    "clangd.path": "/usr/bin/clangd-10",
    "suggest.noselect": false,
    "java.jdt.ls.vmargs": "-javaagent:/usr/local/share/lombok/lombok.jar",
}

```

 

### Greetings

... to the developers of plugins that I used in this configuration and:

https://youtu.be/ssmFzoZS2G8 - this video helped with Java configuration and inspired to create this repo.

https://www.chrisatmachine.com/Neovim/24-neovim-and-java/ - also was interesting
