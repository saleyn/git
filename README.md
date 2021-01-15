## Git Configuration ##

This repository contains a hook that allows to cleanup whitespace and convert source
to from UTF16 to UTF8 encoding on commit.

### Installation ###

* Copy `pre-commit` hook to `/usr/share/git-core/templates/hooks/pre-commit`
* Copy `.gitconfig` to `~/.gitconfig`

For existing repositories enable the hook by running:
```
$ git fixhooks
```
