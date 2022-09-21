# _____________________________________________________________________________________________
# New computer
1. Intall google drive manually and set it up to mirror files to ~/_drive
2. bash 0_new_computer.sh
3. bash 2_recreate_sym_links.sh


vivaldi
- Bitwarden extention. Configure it to not lock on computer lock and to autofil pages
- Login to Vovaldi & enable settings sync

# _____________________________________________________________________________________________
# VSCode

# Installation
1. Initall VSCode version Jan 2020 (before terminal split feature got broken) manually from link https://code.visualstudio.com/updates/v1_42
2. Run vscode_create_links.sh It adds the setting to disable auto-update, it also creates hard links for keybindings.josn and settings.json and a symlink for snippets directory.

# Extensions (code --list-extensions)
tomoki1207.pdf
mohsen1.prettify-json
PKief.material-icon-theme
rokoroku.vscode-theme-darcula

# _____________________________________________________________________________________________
# IntelliJ Idea
"File" -> "Export settings" -> save intellij_settings.zip in this repo
"File" -> "Import settings" -> import the saved file

# _____________________________________________________________________________________________
# Pycharm
"File" -> "Export settings" -> save pycharm_settings.zip in this repo
"File" -> "Import settings" -> import the saved file

# _____________________________________________________________________________________________
# Bash profile
# Syn links in ~/... point to files in  ~/_projects_my/dotfiles/settings/... for all the below scripts except .bash_vars_company which is stored in ~/... as the only copy.
.bash_profile		Sources .bashrc
.bashrc 			Contains main config. Sources .sshrc, .custom_commands, .bash_vars_company
.sshrc				Tool that copies content of .sshrc to a remote server when doing ssh. Sets command line prompt colour. "brew install sshrc"
.custom_commands	My own bash functions and utils.
.company_vars	    Sensitive company specific vars, the file is never checked into VSC.



# _____________________________________________________________________________________________
# Hub (cli for GitHub)
1. brew install hub
2. Add the following to a any sourced by .bashrc. Store the actual token value in a password manager.
	export GITHUB_TOKEN=12345


# _____________________________________________________________________________________________
# iterm2

# Save / load settings
Preferences > General tab > 'Preferences' subtab > "Load preferences from a custom folder or URL" > Browse and select .../dotfiles/settings/iterm/iterm_settings/ dir > 'Save current settings to folder'.

# Theme (only do if theme wasn't ported with settings)
Preferences > Profiles > Colors tab > "Color Presets" dropdown > select "Import" 
> import the iterm/vscode.itermcolors file > Click "Color Presets" dropdown again > select the "vscode" preset.

# _____________________________________________________________________________________________
# Nano highlighting
Follow instructions at https://github.com/scopatz/nanorc 
