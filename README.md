emacs.d
=======
    brew install global //version: 6.2.9
    brew install aspell

    git clone https://github.com/guofei/emacs.d.git .emacs.d
    cd .emacs.d
    git submodule init
    git submodule update

    M-x package-install go-mode
    go get code.google.com/p/rog-go/exp/cmd/godef
    go get -u github.com/nsf/gocode