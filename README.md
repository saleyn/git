## Author ##

Serge Aleynikov <serge at gmail dot com>

## Git Configuration ##

This repository contains a hook that allows to cleanup whitespace and convert source
to from UTF16 to UTF8 encoding on commit.

### Installation ###

For global installation run `make install`.

For local installation in a project copy `pre-commit` hook to the project's `.githooks` folder.

For existing repositories, assuming that you installed the provided `.gitconfig`, enable the hook by running:
```
$ git fixhooks
```
