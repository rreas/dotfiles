# Q-Centrix Dotfiles

These dotfiles are used by the developers at [Q-Centrix](http://q-centrix.com)
to set up OS X machines for development.

## Installation/Setup

1. Ensure [file-system encryption is on](http://support.apple.com/kb/ht4790). 

2. Clone the repository to the ``~/.dotfiles`` folder.

```bash
git clone git@github.com:currica/dotfiles.git ~/.dotfiles
```

3. Run the bootstrapping script.

```bash
ruby bin/bootstrap
```

4. Start a session

  a. Tmux ``tmux new``
  b. Rails ``tmuxinator new rails``

## Updating

To update the dotfiles, run ``ruby bin/update``.

## What's inside

* Vim
* Tmux
* Tmuxinator
* Homebrew Packages
* Docker environments with Boot2Docker

## License

Copyright 2014, Q-Centrix. [MIT License](http://opensource.org/licenses/MIT)

## Todo

-[] Agreed font, color scheme, width.
-[] Alias for ``tmux -S /tmp/pair attach``
