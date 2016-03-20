module Subject
    def initialize
        @observers = []    
    end
    
    def add_observer(observer)
        @observers << observer
    end
    
    def delete_observer(observer)
        raise "Observer not found!" unless @observers.include?(observer)
        @observers.delete(observer)
    end
    
    def all_observers
        @observers
    end
    
    def notify_observers
       @observers.each do |observer|
           observer.update(self)
       end 
    end
end
