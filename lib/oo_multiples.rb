# Enter your object-oriented solution here!
class Multiples
	def initialize(number)
		@number = number
		@multiples = Array.new
		@sum = 0
	end
	
	def collect_multiples
		for i in 1..@number-1
			@multiples << i if i == 3 || i == 5 || i % 3 == 0 || i % 5 == 0
		end
		return @multiples
	end

	def sum_multiples
		multCollected = false
		if @multiples.length == 0
			multCollect = true
			@sum = 0
		end

		self.collect_multiples if multCollected == false
		@multiples.each {|x|
			@sum = @sum + x
		}
		return @sum
	end
end	
