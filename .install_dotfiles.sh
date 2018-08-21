# Install YouCompleteMe (needs to compile dependencies)
# ---
cd ~/.vim/pack/gabriel/start/youcompleteme
git submodule update --init
./install.py --clang-completer

# Install powerline fonts (to use with tmux-config)
# ---
cd /tmp
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# Install tmux-config
# ---
cd ~/.tmux-config
./install.sh

