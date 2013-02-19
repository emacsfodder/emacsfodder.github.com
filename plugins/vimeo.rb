# Title: Vimeo embed tag for octopress
# Author: optikfluffel / Udo
# Description: Embed from Vimeo with just the video id number
# Syntax {% vimeo 20241459 %}

module Jekyll
  class Vimeo < Liquid::Tag

    def initialize(name, id, tokens)
      super
      @id = id
    end

    def render(context)
      %(<div class="embed-video-container"><iframe src="http://player.vimeo.com/video/#{@id}"></iframe></div>)
    end
  end
end

Liquid::Template.register_tag('vimeo', Jekyll::Vimeo)
