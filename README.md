mkcd
=====
[![Build Status](https://travis-ci.org/boboman13/mkcd.svg?branch=master)](https://travis-ci.org/boboman13/mkcd)

> mkcd is an assortment of directory and file creation, deletion, and traversal utilities.

### Included Features
Yes, the elusive `mkdir` and `cd`.
```bash
$ mkcd mydir
```

Recursive cd: a recursive `cd` that will continue as long as there is only one directory (and no files) in your CWD. (Great for those Java packages)
```bash
$ rcd [dirname]
```

Remove current directory: a command that will remove the current directory (since `rm -rf .` does not work).
```bash
$ rmcd
```

### Installation
There are two ways to install this. The first way automatically installs to your `~/.bashrc` file; the second way is to install to a file, which allows you to put the file wherever you want.

#### User install
This will put it into your `~/.bashrc` file.
```bash
$ make install
```

#### Local install
This will generate a new file named `mkcd` that contains all the available commands. (In the user install, this would be appended to `~/.bashrc`)
```bash
$ make
```

### Lint
It just parses for syntax errors.
```bash
$ make lint
```