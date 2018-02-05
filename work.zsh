alias sshi='ssh -i ~/.ssh/idc.pem'
idc1() {
  sshi pingcap@172.16.10.1
}

idc2() {
  sshi pingcap@172.16.20.1
}

idc3() {
  sshi pingcap@172.16.30.1
}
