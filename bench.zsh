capature_flamegraph() {
    if [ ! -d "FlameGraph" ]; then
        echo "please clone FlameGraph locally"
        echo "you can do this by executing:"
        git clone https://github.com/brendangregg/FlameGraph.git
    fi
    export PATH="~/FlameGraph:$PATH"
    if [ ! -x go-torch ]; then
	      go get github.com/uber/go-torch
    fi
    go-torch -u http://127.0.0.1:10080 -t 60
    echo $(curl --upload-file ./torch.svg https://transfer.sh/kernel.svg)
    echo \n
}
