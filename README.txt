# _____________________________________________________________________________________________
# IntelliJ Idea
"File" -> "Export settings" -> save intellij_settings.zip in this repo
"File" -> "Import settings" -> import the saved file

# IntelliJ Google code style
Settings > Editor > Code style > Java > click cog icon > Import scheme ... > select path to 'intellij_java_google_style.xml' file > 
> click 'Scheme' drop down, and select 'GoogleStyle' > now you can do 'Reformat Code' shortcut to reformat everything in Google code style.
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
# Karabiner
# Used to create mouse key binding for command-M key press (minimise window).
brew install --cask karabiner-elements
cp settings/karabiner/minimise.json ~/.config/karabiner/assets/complex_modifications/

# _____________________________________________________________________________________________
# VSCode

# Installation
1. Initall VSCode version Jan 2020 (before terminal split feature got broken) manually from link https://code.visualstudio.com/updates/v1_42
2. Run vscode_create_links.sh It adds the setting to disable auto-update, it also creates hard links for keybindings.josn and settings.json and a symlink for snippets directory.

If you change vscode settings, the changes will be reflected in the ~/_projects_my/dotfiles/settings/vscode/ dir.
HOWEVER! If you 'git checkout' unwanted chenges in dotfiles dir, your VSCode settings will still be the same.
This is because 'git checkout' does not work with hard links. Instead do this:
1. git checkout unwanted changes
2. git add + git commit wanted changes
3. Run create_links.sh and it will recreate files under "~/Library/Application Support/Code/User/"

To list current extensions run in terminal: code --list-extensions
# fabiospampinato.vscode-diff
# hashicorp.terraform
# mohsen1.prettify-json
# PKief.material-icon-theme
# puppet.puppet-vscode
# rokoroku.vscode-theme-darcula
# tomoki1207.pdf
# wholroyd.HCL

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

# _____________________________________________________________________________________________
# Ranger highlighting
brew install highlight		# syntax highlighting in ranger preview (ranger supports highlight package)


