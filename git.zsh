gri() {
  if [ ! -z "$1" ]; then
    git rebase -i HEAD~$1
  fi
}

gfp() {
  if [ ! -z "$1" ]; then
    git fetch origin pull/$1/head:pr/$1
    git checkout pr/$1
  fi
}
