emacs.d
=======
## install global
```
brew install global //version: 6.2.9
brew install aspell
```

## clone
```
git clone https://github.com/guofei/emacs.d.git .emacs.d
cd .emacs.d
git submodule update --init --recursive
```

## build helm
```
cd plugins/helm && make
```

## build emacs-clang-complete-async
```
brew install llvm34
make LLVM_CONFIG=/usr/local/Cellar/llvm34/3.4.2/bin/llvm-config-3.4
```

## install go-mode
```
M-x package-install go-mode
go get code.google.com/p/rog-go/exp/cmd/godef
go get -u github.com/nsf/gocode
```
