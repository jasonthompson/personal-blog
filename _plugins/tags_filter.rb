module Jekyll
  module TagsFilter
    def tag_link(tag)
      tag_dir = Jekyll.configuration({})['tag_dir']
      "<a href='/#{tag_dir}/#{tag}/' class='tag'>#{tag}</a>"
    end

    def tag_list_to_sentence(tags)
      case tags.length
      when 0
        ""
      when 1
        tag_link(tags[0])
      when 2
        "#{tag_link(tags[0])} and #{tag_link(tags[1])}"
      else
        first_list = ""
        tags[0..-2].each do |tag|
          first_list << "#{tag_link(tag)}, "
        end
        "#{first_list} and #{tag_link(tags[-1])}"
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::TagsFilter)
