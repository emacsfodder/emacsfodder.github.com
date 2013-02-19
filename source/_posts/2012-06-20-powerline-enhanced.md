---
layout: post
title: Powerline.el enhanced
description: poweline.el for emacs, modeline beautified
categories: [Emacs, customization]
comments: true
---

## Update: Jan 2013 - There is now a new powerline.el (1.2)

*Note that these enhancements were made to an earlier version, which
 has been bugfixed. It should be trivial to extract the xpm data /
 memoization / condition, for a shape you'd like, I'll patch and
 pull-request at some stage to add these into the latest version...
 
### .... back to the original post.

<!--more-->
 
Powerline is an awesome little enhancement for Emacs, ported over from
Vim by <strike>an original unknown author</strike> Nicolas Rougier and
Chen Yuan, you can find the original version at
[http://emacswiki.org/emacs/powerline.el](http://emacswiki.org/emacs/powerline.el)

I've added a few different xpm shapes as alternatives to the arrows or
flatshapes, a rounded or folded corner, and a set of diagonals. 

Grab the updated powerline from here: [https://gist.github.com/2945235](https://gist.github.com/2945235) <span class="icon-download icon-white"></span>

Put it somewhere in your Emacs load path (e.g. `~/.emacs.d`) and add
the following lines to the end of your `.emacs` / `init.el` - to load
it, set the colors and graphic shape:

{% codeblock lang:cl %}
(require 'powerline)
;; colors...
(setq powerline-color1 "#222")      ;; dark grey; 
(setq powerline-color2 "#444")      ;; slightly lighter grey
;; shape...
(setq powerline-arrow-shape 'arrow) ;; mirrored arrows, 
;; see below for the shape options
{% endcodeblock %}    

## Shapes

{% codeblock %}
(setq powerline-arrow-shape 'arrow)       ;; 18px high arrows  
{% endcodeblock %}

![](/media/arrow.png)

{% codeblock lang:cl %}
(setq powerline-arrow-shape 'arrow14)     ;; 14px high arrows
{% endcodeblock %}

![](/media/arrow14.png)

{% codeblock lang:cl %}
(setq powerline-arrow-shape 'half)        ;; flat
{% endcodeblock %}

![](/media/half.png)

{% codeblock lang:cl %}
(setq powerline-arrow-shape 'percent)     ;; ...? (I have no idea)
{% endcodeblock %}

![](/media/percent.png)

{% codeblock lang:cl %}
(setq powerline-arrow-shape 'curve)       ;; scallop curve
{% endcodeblock %}

![](/media/curve.png)

## New shapes in this version

{% codeblock lang:cl %}
(setq powerline-arrow-shape 'rounded)     ;; new, round corner
{% endcodeblock %}

![](/media/rounded.png)

{% codeblock lang:cl %}
(setq powerline-arrow-shape 'chamfer)     ;; new, folded corner
{% endcodeblock %}

![](/media/chamfer.png)

{% codeblock lang:cl %}
(setq powerline-arrow-shape 'slant-left)  ;; new, diagonal from left
{% endcodeblock %}

![](/media/slant-left.png)

{% codeblock lang:cl %}
(setq powerline-arrow-shape 'slant-right) ;; new, diagonal from right
{% endcodeblock %}
![](/media/slant-right.png)

{% codeblock lang:cl %}
(setq powerline-arrow-shape 'slant)       ;; mirrored diagonals
{% endcodeblock %}

![](/media/slant.png)

