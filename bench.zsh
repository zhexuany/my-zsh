capture_flamegraph() {
    ip="127.0.0.1"
    port="10080"
    if [ ! -z "$1" ]; then
        ip=$1
    fi

    if [ ! -z "$2" ]; then
        port=$2
    fi

    if [ ! -d "FlameGraph" ]; then
       echo "please clone FlameGraph locally"
       echo "you can do this by executing:"
       git clone https://github.com/brendangregg/FlameGraph.git
    fi
    export PATH="~/FlameGraph:$PATH"
    if [ ! -x go-torch ]; then
        go get github.com/uber/go-torch
    fi
    go-torch -u http://$ip:$port` -t 60
    echo $(curl --upload-file ./torch.svg https://transfer.sh/kernel.svg)
    echo \n
}
