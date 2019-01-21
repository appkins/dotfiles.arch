export GOPATH="$HOME/work/go"
export GOROOT="/usr/lib/go"

# Adds $GOPATH/bin's to PATH
path=( `printf '%s/bin\n' ${(@s/:/)GOPATH}` $path )