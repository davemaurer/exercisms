class Sieve
  def initialize(number)
    @numbers = number_range(number)
  end

  def number_range(number)
    return nil if number < 2
    (2..number).to_a
  end

  def primes
    return [] if @numbers.nil?
    max = @numbers[-1]
    @numbers.each do |num|
      next unless num
      break if num * num > max
      (num * num).step(max, num) do |n|
        @numbers[@numbers.index(n)] = nil if @numbers.index(n)
      end
    end
    @numbers.compact
  end
end

module BookKeeping
  VERSION = 1
end
