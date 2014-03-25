module Jekyll
  module TagsFilter
    def tag_link(tag)
      "<a href='#{site.tag_dir}/#{tag}/' class='tag'>#{tag}</a>"
    end  
  end
end

Liquid::Template.register_filter(Jekyll::TagsFilter)
