#!/bin/bash

rm /Users/omomotov/Library/Application\ Support/Code/User/settings.json
rm /Users/omomotov/Library/Application\ Support/Code/User/keybindings.json
rm /Users/omomotov/Library/Application\ Support/Code/User/snippets
rm -rf /Users/omomotov/Library/Application\ Support/Code/User/snippets


ln /Users/omomotov/_projects_my/dotfiles/settings/vscode/settings.json /Users/omomotov/Library/Application\ Support/Code/User/settings.json
ln /Users/omomotov/_projects_my/dotfiles/settings/vscode/keybindings.json /Users/omomotov/Library/Application\ Support/Code/User/keybindings.json
ln -s /Users/omomotov/_projects_my/dotfiles/settings/vscode/snippets/ /Users/omomotov/Library/Application\ Support/Code/User/


