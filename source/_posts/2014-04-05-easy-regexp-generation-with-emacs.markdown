---
layout: post
title: "Easy regexp generation with Emacs"
comments: true
categories: [Emacs,regexp,emacslisp]
---

Building regular expressions is quite tedious, and while Emacs has a
number of tools that help build them they are generally geared towards
building regexps which are Emacs Lisp specific.

Emacs Lisp regular expressions use a different syntax than you're
probably used to (those are usually PCRE used by many current/popular
languages.) But it's quite easy to convert them with a nice package
called `pcre2el`.

## Creating an optimized regexp to match a list of words

When you want to match a list of words, using a regexp, it's fairly
standard to use a pattern similar to this:

    word1|word2|word3

As that list of words becomes more complex, doing something like the
following, to optimize the regexp becomes trickier:

    word[1,2,3]

Emacs can help us out here with a neat extension called `regexp-opt`
(short for: regular expression optimiser.)  It accepts a list of
words, and builds an optimised regexp for them. `regexp-opt` is a
builtin package, so you don't need to install it.

For example, the list of words in this sentence.

    (regexp-opt
      '("For" "example" "the" "list" "of" "words" "in" "this" "sentence"))

Generates the following Emacs Lisp style regular expression:

    \(?:For\|example\|in\|list\|of\|sentence\|th\(?:e\|is\)\|words\)

I think this is rather cool, although as it is, a bit awkward for use
in most other languages. This is where the package `pcre2el` comes in
handy, while `pcre2el` sounds like it converts PCRE to Emace Lisp
style, which indeed it does, it also automatically works the other way
and converts Emacs Lisp style regexps to pcre. `pcre2el` is available
on MELPA, so providing you have [MELPA packages available]() you should be able to just do:

    M-x package-install
    pcre2el

Once it's installed, here's what it gives us when we send our previous
`regexp-opt` output though it:

    (?:For|example|in|list|of|sentence|th(?:e|is)|words)

This is the emacs lisp code:

    (pcre-to-elisp
      (regexp-opt
        '("For" "example" "the" "list" "of" "words" "in" "this" "sentence")))

Turning this into an interactive function is pretty easy, let's say
you want Emacs to prompt you for the list of words...

    (defun pcre-regexp-from-list-of-words (words)
      "insert a pcre regexp to match a list of words"
      (interactive "sList of words for regexp: ")
      (insert
       (pcre-to-elisp
        (regexp-opt (split-string words)))))

You can just paste this into `*scratch*` and evaluate it (do `C-x
C-e`) now you can run it with `M-x pcre-regexp-from-list-of-words` and
enter a string of words, for example _"this is a test"_ and we'd get
the following regexp inserted into the buffer:

    (?:a|is|t(?:est|his))

I hope this helps you out with making regexps, and also some
inspiration for little Emacs hacks of your own.
