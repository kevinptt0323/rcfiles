# rcfiles

My rcfiles for:

- (Keep updating)
    - [zsh](http://www.zsh.org/)
    - [git](https://git-scm.com/)
    - [tmux](https://github.com/tmux/tmux)
- (Not maintaining)
    - [tcsh](https://github.com/tcsh-org/tcsh)
    - [screen](http://www.gnu.org/software/screen/)

## Installation

Clone files into `$HOME/rcfiles` by default.

```
git clone https://github.com/kevinptt0323/rcfiles.git ~/rcfiles
./rcfiles/run.sh
```

If you want to change the directory, run this command:

```
git clone https://github.com/kevinptt0323/rcfiles.git <path-to-rcfiles>
RC_DIR=<path-to-rcfiles> ./rcfiles/run.sh
```

**Note: you have to modify `RC_DIR` to `<path-to-rcfiles>` in `.zshrc`.**

## zsh

Add commands in `zsh/zsh.custom`. See `zsh/zsh.custom.example`.

## git

Some git aliases.

If you want to enable [zsh-git-prompt](https://github.com/olivierverdier/zsh-git-prompt),
you can run command below in `rcfiles`:

```
git submodule update --init
```

## tmux

- Bind prefix key to `<C-a>`
- Mouse enabled
