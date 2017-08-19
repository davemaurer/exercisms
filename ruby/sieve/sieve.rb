class Sieve
  def initialize(number)
    @numbers = number_range(number)
  end

  def number_range(number)
    return nil if number <= 2
    (2..number)
  end

  def primes
    result = []
    return result if @numbers.nil?
  end
end
