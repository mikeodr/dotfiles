#!/usr/bin/env bash

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"


if [ ! -d "~/.oh-my-zsh" ]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

for f in $(find $SCRIPT_DIR/dotfiles -type f)
do
	ln -svf $f ~
done
