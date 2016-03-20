class SimpleWriter
    attr_reader :current_line
    
    def initialize(path)
        @file = File.open(path,'w')
        @current_line = 1
    end
    
    def write_line(line)
        line_increment
        @file.print(line + "\n")
        @file.flush()
    end
    
    def pos
        @file.pos
    end
    
    def rewind
        @file.rewind
    end
    
    def close
        @file.close
    end
    
    def line_increment
         @current_line += 1
    end
end