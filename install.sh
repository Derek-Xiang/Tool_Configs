#!/usr/bin/env bash
# Link dotfiles into $HOME with GNU Stow. Safe to re-run.
# Stow aborts on conflicts (e.g. a pre-existing ~/.zshrc): move that file aside and re-run.
set -euo pipefail
cd "$(dirname "$0")"

command -v stow >/dev/null || brew install stow

clone() { [ -d "$2" ] || git clone --depth 1 "$1" "$2"; }
clone https://github.com/ohmyzsh/ohmyzsh.git "$HOME/.oh-my-zsh"
clone https://github.com/romkatv/powerlevel10k.git "$HOME/powerlevel10k"
clone https://github.com/gpakosz/.tmux.git "$HOME/oh_my_tmux"
clone https://github.com/sahaj-b/ghostty-cursor-shaders "$HOME/.config/ghostty/shaders"

mkdir -p "$HOME/.config/tmux"
ln -sfn "$HOME/oh_my_tmux/.tmux.conf" "$HOME/.config/tmux/tmux.conf"

# nvim is linked as a whole directory; the rest file-by-file so third-party
# content (e.g. ghostty shaders) never lands inside this repo.
stow -t "$HOME" -R nvim
stow -t "$HOME" -R --no-folding zsh git ghostty tmux aerospace yazi claude

echo "Done. Open nvim once to install plugins."
