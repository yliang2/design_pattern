require 'rubygems'
require 'madeleine'

class Employee
    attr_accessor :name, :number, :address
    
    def initialize(name, number, address)
        @name = name
        @number = number
        @address = address
    end
    
    def to_s
        "employee: name: #{name}, num: #{number}, address: #{address}"
    end
end