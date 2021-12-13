#!/bin/bash

rm /Users/omomotov/Library/Application\ Support/Code/User/settings.json
rm /Users/omomotov/Library/Application\ Support/Code/User/keybindings.json
rm /Users/omomotov/Library/Application\ Support/Code/User/snippets
rm -rf /Users/omomotov/Library/Application\ Support/Code/User/snippets


ln `pwd`/settings/vscode/settings.json /Users/omomotov/Library/Application\ Support/Code/User/settings.json
ln `pwd`/settings/vscode/keybindings.json /Users/omomotov/Library/Application\ Support/Code/User/keybindings.json
ln -s `pwd`/settings/vscode/snippets/ /Users/omomotov/Library/Application\ Support/Code/User/


