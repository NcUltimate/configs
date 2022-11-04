source ~/.bashrc
source ~/.qualiarc

####### EXPORTS #######
autoload -U colors && colors
export PS1="%{$fg[cyan]%}%n%{$reset_color%}@%{$fg[green]%}%~%{$reset_color%}$ "
# For QLI5 Homebrew-tap
export HOMEBREW_GITHUB_API_TOKEN=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
