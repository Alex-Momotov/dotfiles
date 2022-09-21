mkdir ~/_docs ~/_projects ~/_resources ~/_workspace ~/_workspace2; touch ~/.company_vars			# create home dirs
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"     # install brew
chsh -s /bin/bash       																			# switch default shell to bash
brew install --cask google-drive																	# install google drive