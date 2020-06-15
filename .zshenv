[[ -s "/home/vozhyk/.gvm/scripts/gvm" ]] && source "/home/vozhyk/.gvm/scripts/gvm"
if [ -z "$GOPATH" ]; then
    export GOPATH="/home/vozhyk/dev/go"
fi

[[ -s "/home/vozhyk/.cargo/env" ]] && source ~/.cargo/env

export PATH="$PATH:/home/vozhyk/src/android-sdk/tools:$GOPATH/bin"
