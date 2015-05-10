# zmodload zsh/zprof

dotfiles=$(dirname "${${(%):-%N}:A}")
fpath=("${dotfiles}/zsh/zsh-completions/src" $fpath)

source "${dotfiles}/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# Begin loading oh-my-zsh
ZSH="${dotfiles}/zsh/oh-my-zsh"
ZSH_THEME=""
plugins=(
    catimg
    colored-man
    pip
    python
    sudo
    supervisor
    systemadmin
    tmux
)

if [[ -e "${HOME}/.zshrc_local" ]]; then
    # Let a local .zshrc override
    source "${HOME}/.zshrc_local"
fi

source "${ZSH}/oh-my-zsh.sh"

source "${dotfiles}/zsh/aliases.zsh"

if [[ "${ZSH_THEME}" == "" ]]; then
    # Stick to my tried and true if a theme wasn't set
    source "${dotfiles}/zsh/nanofish/nanofish.zsh-theme"
fi

source "${dotfiles}/zsh/keyboard.zsh"

if [[ $OSTYPE =~ "darwin" ]]; then
    source "${dotfiles}/zsh/osx.zsh"
fi

# zprof