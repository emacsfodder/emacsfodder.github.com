NOTE: This is work in progress. I need to change minor stuff and tweak this theme in general. So if you plan to or have added this theme then you may want to watch this repo for version releases.
Current version: v0.9

#Greyshade

Greyshade is a minimal, responsive theme for Octopress.
Based on [Slash](https://github.com/tommy351/Octopress-Theme-Slash)  

[Demo](http://shashankmehta.in/archive/2012/greyshade.html)

![mobile view](https://dl.dropbox.com/u/6396581/greyshade/1.png)

![Desktop view](https://dl.dropbox.com/u/6396581/greyshade/2.png)

##Conditions 

The only condition to use this theme for your octopress blog is that you have to set a different highlight color than the ones mentioned [here](https://github.com/shashankmehta/greyshade/wiki/Sites-using-Greyshade). When you have chosen a highlight color, please add it to the [wiki](https://github.com/shashankmehta/greyshade/wiki/Sites-using-Greyshade) so that no one else uses it.

Highlight color: This color is used on a:hover, blockquotes etc. I'll be using it in more places so that blogs with different highlight colors look slightly different and maintain a bit of their uniqueness. 

##Install

Type the code below in terminal.

	$ git clone git@github.com:shashankmehta/greyshade.git .themes/greyshade
	$ echo "\$greyshade: color;" >> sass/custom/_colors.scss //Substitue 'color' with your highlight color
	$ rake install['greyshade']
	$ rake generate

##TO DO

1. Add search function
2. Add Octopress credit tag somewhere

##License

MIT: [http://sm.mit-license.org](http://sm.mit-license.org/)