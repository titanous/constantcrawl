module Jekyll
  class SassConverter < Converter
    def setup
      require 'compass'
      require 'grid-coordinates'
      Compass.configuration do |c|
        c.sass_dir = 'css'
        c.project_path = '.'
      end
    end

    def matches(ext)
      ext =~ /sass|scss/i
    end

    def output_ext(ext)
      '.css'
    end

    def convert(content)
      setup
      begin
        Sass::Engine.new(content, Compass.sass_engine_options.merge(:style => :compressed, :syntax => syntax(content))).render
      rescue => e
        puts "Sass Exception (#{e.sass_line}): #{e.message}"
      end
    end

    private

    def syntax(content)
      content.include?(';') ? :scss : :sass
    end
  end
end
