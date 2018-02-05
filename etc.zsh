upload_per_machine() {
  local dir=$PWD
  if [ ! -z "$1" ] && [ ! -z "$2" ]; then
    scp $PWD/$1 172.16.10.$2:~/spark-2.1.0-bin-hadoop2.7/jars/tispark-0.1.0-SNAPSHOT.jar
  fi
}

upload_all() {
  local file=$1
  if [ ! -z "$file" ]; then
    upload_per_machine $1 7
    upload_per_machine $1 8
    upload_per_machine $1 59
    upload_per_machine $1 60
  else
    echo "file can not be empty."
  fi
}

psbyname() {
  if [ ! -z "$1" ]; then
    ps aux | grep -v grep | grep "$1"
  else
    echo "must specify process name."
  fi
}

findextension() {
  if [ ! -z "$1" ]; then
    find -name "*.$1"
  else
    echo "file extension must be specified."
  fi
}


update() {
  echo "upgrading stuffs installed by brew..."
  cur_path=$(PWD)
  echo $cur_path
  brew upgrade
  echo "upgrading spacemacs..."
  cd ~/.emacs.d && git pull origin develop

  ## update go layer's dependencies
  go get -u -v github.com/nsf/gocode
  go get -u -v github.com/rogpeppe/godef
  go get -u -v golang.org/x/tools/cmd/guru
  go get -u -v golang.org/x/tools/cmd/gorename
  go get -u -v golang.org/x/tools/cmd/goimports
  go get -u -v github.com/alecthomas/gometalinter
  gometalinter --install --update
  go get -u -v github.com/godoctor/godoctor
  go install github.com/godoctor/godoctor
  cd $cur_path
}

git_sync() {
  git fetch origin master
  git rebase origin/master
}

set_proxy() {
  export http_proxy=http://127.0.0.1:1087;
  export https_proxy=http://127.0.0.1:1087;
}

unset_proxy() {
  unset -v http_proxy
  unset https_proxy
}

clean_ds() {
  find . -name ".DS_Store"  -exec rm -rf {} \;
}

dep_graph() {
  dep status -dot | dot -T png | open -f -a /Applications/Preview.app
}
