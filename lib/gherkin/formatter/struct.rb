module Gherkin
  module Formatter
    module Struct
      class Comment
        attr_reader :value, :line
        
        def initialize(value, line)
          @value, @line = value, line
        end
      end

      class Tag
        attr_reader :name, :line
        
        def initialize(name, line)
          @name, @line = name, line
        end
        
        def eql?(tag)
          @name.eql?(tag.name)
        end

        def hash
          @name.hash
        end
      end

      class Statement
        attr_reader :comments, :tags, :keyword, :name, :description
        
        def initialize(comments, tags, keyword, name, description)
          @comments, @tags, @keyword, @name, @description = comments, tags, keyword, name, description
        end
      end
    end
  end
end