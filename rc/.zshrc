source ~/.bashrc
source ~/.qualiarc

####### EXPORTS #######
autoload -U colors && colors
export PS1="%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[green]%}%~%{$reset_color%}$ "

####### PATH #######
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit
