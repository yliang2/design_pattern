class Stack
    include Enumerable
    
    def initialize()
        @elements = []
    end
    
    def <<(element)
        @elements << element
    end    
    
    def each(&block)
        @elements.each(&block)
    end
end