class Squares
	attr_reader :num

	def initialize(num)
		@num = num
		@numbers = (1..num).to_a
	end

	def square_of_sum
		@numbers.reduce(:+) ** 2
	end

	def sum_of_squares
		@numbers.reduce(0) do |sum, num|
			sum + (num ** 2)
		end
	end

	def difference
		return 0 if @num == 0
		square_of_sum - sum_of_squares
	end
end

module BookKeeping
	VERSION = 3
end
