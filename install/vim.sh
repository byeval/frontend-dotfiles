BUNDLE_DIR=~/.vim/bundle

# Install or update vundle
if [ -d "$BUNDLE_DIR" ]; then
    cd "$BUNDLE_DIR/vundle" && git pull origin master
else
    mkdir -p "$BUNDLE_DIR" && (git clone https://github.com/VundleVim/Vundle.vim.git "$BUNDLE_DIR/Vundle.vim")
fi

# Compile YouCompleteMe
cd "$BUNDLE_DIR/YouCompleteMe" && git submodule update --init --recursive && python install.py 

# Install bundles
vim +PluginInstall +qall

cd -
