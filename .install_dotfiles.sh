git clone --bare https://github.com/gcuendet/dotfiles.git $HOME/.dotfiles
function config {
   /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no

# Install YouCompleteMe (needs to compile dependencies)
# ---
config submodule update --init --recursive
cd ~/.vim/pack/gabriel/start/youcompleteme
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

