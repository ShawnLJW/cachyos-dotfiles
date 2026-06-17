set -euo pipefail 

DOTFILES_REPO="git@github.com:ShawnLJW/cachyos-dotfiles.git"
GIT_DIR="$HOME/.dotfiles"

git_dotfiles() {
  git --git-dir="$GIT_DIR" --work-tree="$HOME" "$@"
}


echo "Cloning bare repo into $GIT_DIR"
git clone --bare "$DOTFILES_REPO" "$GIT_DIR"
git_dotfiles config --local status.showUntrackedFiles no
git_dotfiles checkout

echo "Deploying customisations to SDDM theme"
cp -r $HOME/sddm-silent-theme/. /usr/share/sddm/themes/silent
