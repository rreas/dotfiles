# Q-Centrix Dotfiles

These dotfiles are used by the developers at [Q-Centrix](http://q-centrix.com)
to set up OS X 10.9 machines for development. We use [Vim](http://vim.org)
and [Tmux](http://tmux.sourceforge.net).

## Before Installation

* [Ensure file-system encryption is on.](http://support.apple.com/kb/ht4790)
* [Install Xcode command line tools.](http://railsapps.github.io/xcode-command-line-tools.html)
* [Map caps lock to Control (keyboard > modifier keys)](http://teohm.com/blog/2012/04/08/mac-tips-use-caps-lock-as-control-key/)
* [Install Java JDK for OS X](http://www.oracle.com/technetwork/java/javase/downloads/index.html) ([instructions](http://docs.oracle.com/javase/7/docs/webnotes/install/mac/mac-jdk.html))
* [Set up an SSH key with Github](https://help.github.com/articles/generating-ssh-keys)

## Installing

```bash
git clone git@github.com:currica/dotfiles.git ~/.dotfiles
gem install rake
rake dotfiles:bootstrap
```

## Usage

To start a new session:

```bash
work # or tmuxinator start rails
```
To connect to a session:

```bash
attach <name> # or TODO: ??
```

## Updating

TODO: To update the dotfiles, run ``rake dotfiles:update``.

## License

Copyright 2014, Q-Centrix. [MIT License](http://opensource.org/licenses/MIT)
