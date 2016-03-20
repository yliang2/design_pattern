class TimeStampingWriter 
    def initialize(real_writer)
        @real_writer = real_writer
    end
    
    def write_line(line)
        @real_writer.write_line("#{Time.new}: #{line}")
    end
    
    def method_missing(name, *args)
        @real_writer.send(name, *args)
    end
end