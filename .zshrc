source ~/.bashrc
source ~/.qualiarc

####### EXPORTS #######
autoload -U colors && colors
export PS1="%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[green]%}%~%{$reset_color%}$ "
