# `Exit`ing R

## Motivation

After working less and less with R, and `ssh`ing more and more, the end of my R-sessions started to look like this:
```
> exit
Error: object 'exit' not found
> q()
Save workspace image? [y/n/c]: n
```
So I figured that if I would have an `exit` object which calls `quit()`, my user expRience would be better.

## Usage

One can just simply use `library` to load the package - after that sinply typing `exit` will `quit()` the session.

## Future plans:

  - At the moment `exit` is just `quit("no")`, but adding a `savehistory()` would be udeful (and more bash-like).
  - Instead of `delayedAssign()` and `namespaceExport()`, using `makeActiveBinding()` seems less hacky.