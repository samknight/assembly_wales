module AssemblyWales
  class Speech
    attr_accessor :content

    def initialize(content)
      @content = content
    end

    def method_missing(name, *args, &block)
      if content.has_key?(name.to_s)
        content[name.to_s]
      else
        super
      end
    end
  end
end
