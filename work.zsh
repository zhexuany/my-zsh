idc1() {
  sshi pingcap@172.16.10.1
}

idc2() {
  sshi pingcap@172.16.20.1
}

idc3() {
  sshi pingcap@172.16.30.1
}

idc() {
    if [ ! -z "$1" ]; then
        ssh root@172.16.30.$1
    else
        echo "please supply a suffix of ip such as 90, 92"
    fi
}
