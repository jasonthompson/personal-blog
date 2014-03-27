module Jekyll
  module TagFilter
    def tag_url(tag)
      "<a href='/topics/#{tag}/' class='tag'>#{tag}</a>"
    end

    def tag_list_to_sentence(tags)
      first_tags = tags[0..-2].map {|t| tag_url(t)}

      case tags.length
      when 0
        ""
      when 1
        tag_url(tags[0])
      when 2
        "#{tag_url(tags[0])} and #{tag_url(tags[1])}"
      else
        "#{first_tags.join(", ")} and #{tag_url(tags[-1])}" end
    end
  end
end

Liquid::Template.register_filter(Jekyll::TagFilter)
