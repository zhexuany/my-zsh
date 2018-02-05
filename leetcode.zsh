lshowg() {
  if [ ! -z "$1" ]; then
    leetcode show "$1" -g -l java
  else
    echo "problem number must be specifed."
  fi
}

lsol() {
  if [ ! -z "$1" ]; then
    leetcode show "$1"  --solution
  else
    echo "problem number must be specifed."
  fi
}

lshow() {
  if [ ! -z "$1" ]; then
    leetcode show "$1"
  else
    echo "problem number must be specifed."
  fi
}


ltest() {
  if [ ! -z "$1" ]; then
    leetcode test "$1"
  else
    echo "problem number must be specifed."
  fi
}

lsub() {
  if [ ! -z "$1" ]; then
    leetcode submit "$1"
  else
    echo "problem number must be specifed."
  fi
}
