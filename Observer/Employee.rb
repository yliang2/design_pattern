require './Subject.rb'

class Employee
    include Subject
    
    attr_accessor :name, :address, :salary
    
    def initialize(name, address, salary)
        super()
        @name = name
        @address = address
        @salary = salary
    end
    
    def salary=(new_salary)
       @salary= new_salary
    end
    
    def changed
        notify_observers
    end
end
