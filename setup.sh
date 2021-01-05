#!/bin/bash

# TODO: maybe install starship and fish-shell here?

# Symlink out config files.
ln -s `pwd`/config/config.fish ~/.config/fish/config.fish
ln -s `pwd`/config/starship.toml ~/.config/starship.toml