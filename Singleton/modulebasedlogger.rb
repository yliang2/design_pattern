module ModuleBasedLogger
    ERROR = 1
    WARING = 2
    INFO = 3
    
    @@log = File.open("log.txt",'w')
    @@level = WARING
    
    def self.error(msg)
        @@log.puts(msg + "\n")
        @@log.flush
    end
    
    def self.waring(msg)
        @@log.puts(msg + "\n") if @@level >= WARING
        @@log.flush
    end

    def self.info(msg)
        @@log.puts(msg + "\n") if @@level >= INFO
        @@log.flush
    end

    def self.level= (new_level)
        @@level = new_level
    end
    
    def self.level
        @@level
    end
end