rm -R $HOME/.config/nvim $HOME/.local/share/nvim
ln -sf $HOME/.vim/config/ $HOME/.config/nvim
ln -sf $HOME/.vim/share/ $HOME/.local/share/nvim
sudo rm -R config/plugin/ share/*
yay -Sy ccls pyright texlab lua-language-server eslint
