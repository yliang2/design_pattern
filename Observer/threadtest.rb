class Threadtest
    def initialize
        @t1 = Thread.new do
        	sum = 0
        	1.upto(10) {|x| sum += x}
        	puts "The sum of the first 10 integers is #{sum}"
        end
        
        @t2 = Thread.new do
            product = 1
            1.upto(10) {|x| product *= x}
            puts "The product of the first 10 integers is #{product}"
        end

        @t1.join
        @t2.join
    end
end

