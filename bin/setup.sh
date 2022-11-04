# Use our very own loadrc to load rc files
curl -sSL https://raw.githubusercontent.com/NcUltimate/configs/master/bin/loadrc.sh | sh

# Use .gitignore-global as global ignore file
git config --global core.excludesfile ~/.gitignore-global
