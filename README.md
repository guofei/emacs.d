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

## install go-mode
```
M-x package-install go-mode
go get -v github.com/rogpeppe/godef
go get -u github.com/nsf/gocode
```