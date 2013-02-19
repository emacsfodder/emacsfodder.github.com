---
layout: post
title: "HexRGB.el with some extras"
description: "a few useful enhancements for hexrgb.el"
categories: [Emacs, color]
comments: true
---

If you use a lot of css, you probably know there a few useful
preprocessor, like [SASS](http://sass-lang.com) and
[LESS](http://lesscss.org) both of which give us a collection of color
manipulation functions.

Building on the work done by the most excellent **Drew Adams** in his
hexrgb.el (the original is at http://www.emacswiki.org/cgi-bin/wiki/hexrgb.el)

I've added a few extensions, and tweaks to make it even more useful.

<!--more-->

`hexrgb-rgb-to-hex` and `hexrgb-hsv-to-hex` accepts an additional
argument `nb-digits` so that hex colors returned are with 2 digits per
r,g,b value.

{% codeblock %}
(hexrgb-hsv-to-hex   0.05   0.7   0.4     2) 
;;------------------ ^ ---- ^ --- ^ ----- ^ -------
;;                   hue    sat   light   nb-digits 
{% endcodeblock %}


Which returns <span style="color: white; background-color:#6639B8;
padding:4px; border-radius: 3px;">#6639B8</span>
                                                 
I've also added a few convenience functions that provide color
manipulation direct from hex colors. Currently these just work in
eshell or interactive emacs lisp modes.

For example:

{% codeblock %}
(hexrgb-hex-set-brightness "#ff0000" 0.3)
{% endcodeblock %}
    
returns <span style="color:white;background-color:#4C0000; padding:4px;border-radius: 3px;">#4C0000</span>

{% codeblock %}
(hexrgb-hex-set-saturation "#ff0000" 0.5)
{% endcodeblock %}

returns <span style="color:white;background-color:#FF7F7F; padding:4px; border-radius: 3px;">#FF7F7F</span>

{% codeblock %}
(hexrgb-hex-set-hue "#FF0000" 0.6)
{% endcodeblock %}

returns <span style="color:white;background-color:#0066FF; padding:4px; border-radius: 3px;">#0066FF</span>

Color groups, 

This makes working with colors easier, for example, you
could add `(require 'hexrgb)` to a theme definition and use the
functions to manipulate theme colors, or just switch on
[*rainbow-mode*](https://github.com/emacsmirror/rainbow-mode) when
you're in eshell, and play.

Here's the full code, to get the new functions, they're at the bottom.

{% include_code hexrgb.el lang:cl %}
