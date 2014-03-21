module Jekyll
  class DateArchivePage < Page
    def initialize(site, base, dir, name)
      @site = site
      @base = base
      @dir = dir
      @name = name

      self.process(@name)
      read_yaml(File.join(base, dir), name)
    end
  end

  class DateArchiveGenerator < Generator
    safe true

    def generate(site)
      require 'pry'
         site.pages << DateArchivePage.new(site, site.source, '/archive/', 'index.html')
    end
  end
end
