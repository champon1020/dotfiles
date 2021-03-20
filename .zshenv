# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# go
export GOPATH="$HOME/repos/go"
export GOROOT="/usr/local/go"
export GOPRIVATE="github.com/champon1020"
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# pyenv
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH

# rust
export PATH=$HOME/.cargo/bin:$PATH

# matlab
export PATH=$HOME/matlab/bin:$PATH

# cuda
export PATH=$PATH:/usr/local/cuda/bin
export LD_LIBRARY_PATH=/usr/local/cuda/lib64

# coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
