# craft plugin

Adds autocomplete for the Craftcms cli.

## Install

### oh-my-zsh

If you're using [oh-my-zsh](github.com/robbyrussell/oh-my-zsh):

1. In the command line, change to _oh-my-zsh_'s custom plugin directory :

    `cd ~/.oh-my-zsh/custom/plugins/`

2. Clone the repository into a new `git-extra-commands` directory:

    `git clone https://github.com/visited-nl/zsh-craft.git zsh-craft`

3. Edit your `~/.zshrc` and add `zsh-craft` – same as clone directory – to the list of plugins to enable:

    `plugins=( ... zsh-craft )`

4. Then, restart your terminal application to **refresh context** and use the plugin. Alternatively, you can source your current shell configuration:

    `source ~/.zshrc`


## Thanks
Based on: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/yii2
