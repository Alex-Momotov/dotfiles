# -------------------------------------------------------------------------------------
    # IntelliJ Idea
"File" -> "Export settings" -> save intellij_settings.zip in this repo
"File" -> "Import settings" -> import the saved file

# -------------------------------------------------------------------------------------
    # Pycharm
"File" -> "Export settings" -> save pycharm_settings.zip in this repo
"File" -> "Import settings" -> import the saved file

# -------------------------------------------------------------------------------------
    # Bash profile
# Syn links in ~/... point to files in  ~/_projects_my/dotfiles/... for all the below 
# scripts except .bash_vars_company which is stored in ~/... as the only copy.
.bash_profile		Sources .bashrc
.bashrc 			Contains main config. Sources .sshrc, .custom_commands, .bash_vars_company
.sshrc				Tool that copies content of .sshrc to a remote server when doing ssh. Sets command line prompt colour. "brew install sshrc"
.custom_commands	My own bash functions and utils.
.bash_vars_company	Sensitive company specific vars, the file is never checked into VSC.

# -------------------------------------------------------------------------------------
    # VSCode
Original setting files remain under ~/_projects_my/dotfiles/vscode/.
vscode dir contains create_links.sh script. It creates hard links for keybindings.josn and settings.json 
and a symlink for snippets directory. 

If you change vscode settings, the changes will be reflected in the ~/_projects_my/dotfiles/vscode/ dir.
HOWEVER! If you 'git checkout' unwanted chenges in dotfiles dir, your VSCode settings will still be the same.
This is because 'git checkout' does not work with hard links. Instead do this:
1. git checkout unwanted changes
2. git add + git commit wanted changes
3. Run create_links.sh and it will recreate files under "~/Library/Application Support/Code/User/"

To list current extensions run in terminal: code --list-extensions
hashicorp.terraform
mohsen1.prettify-json
ms-azuretools.vscode-docker
nachocab.run-external
puppet.puppet-vscode
sensourceinc.vscode-sql-beautify

# ---------------------------------------------------------------------------------------------





