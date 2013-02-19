---
layout: post
title: Notes on deftheme
description: a few notes on the deftheme method in Emacs 24
categories: [deftheme, Emacs]
comments: true
---

I have a bunch of Emacs color themes that I built a few years ago,
they use the old `color-theme.el` system, I'd also adapted a web-based
theme creator, so that it could load existing themes, as long as they
were in a fixed format, the same as used by
[http://themes.sweyla.com/](http://themes.sweyla.com/) - All in all I
was quite invested in `color-theme.el`

<!--more-->

I've begun to convert some of my regular themes over to the new
`(deftheme)` format. The main advangatge is there's no reliance on
`color-theme.el` anymore. There's a couple of small drawbacks, when a
theme is first loaded, you need to confirm it, since it's possible to
run arbitrary emacs-lisp in it. You then need to enable it for future
use, so it's a quick trip to `.emacs` - This is only going to bug you
if you run Emacs in `-Q` quick-start mode, which I do in some cases.

With Emacs 24 you can create a theme `customize-create-theme` it's ok,
but not the best way to to it, it's much better to learn how to work
with theme source code, which like everything that extends Emacs, is
written in emacs lisp.

To that end, have a look at this base template, it's meant to serve as
a guide, it'd be better to create a few `yas/snippets`.

{% include_code template-theme.el lang:cl %}

For more advanced examples, look at the new built in themes, I'd
recommend `tango-theme.el` which you'll be able to find using, `M-x
describe-theme` `tango`.

Have a look at [my extensions](/blog/hexrgb-some-convenient-functions/) to Drew Adams
[`hexrgb.el`](http://emacswiki.org/emacs/hexrgb.el) for some useful
color helpers, and don't forget the always helpful
[`rainbow-mode.el`](http://julien.danjou.info/projects/emacs-packages). Personally
I think Emacs plus these little extensions, are the best way to make
themes.

