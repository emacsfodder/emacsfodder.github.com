---
layout: post
title: "Remember Theme"
date: 2013-08-01 19:22
comments: true
categories: 
---

Not a theme, but a simple mechanism to reload the last theme you were
using when you quit Emacs.

I keep the same `.emacs.d` on all my machines, but I like to use
different themes from time to time without impacting my config.

`remember-theme` provides a very simple method of doing this. Once
installed, it will autoload at startup, check `~/.emacs-theme` file it
uses to remember your last theme, and then load it (after disabling
any preloaded themes). When Emacs is quit, the last theme loaded will
be saved, ready to be loaded up next time.

To install it, make sure you have the **marmalade-repo** available to
the emacs package manager and then do `M-x package-list-packages` and
find `remember-theme` in the list. (press `i` and `x` to begin
installing.)

You can find the code on github : https://github.com/jasonm23/emacs-remember-theme

