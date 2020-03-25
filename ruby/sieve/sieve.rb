class Sieve
  attr_accessor :primes

  def initialize(number)
    # no primes under 2
    return @primes = [] if number < 2

    @primes = (2..number).to_a
    @primes.each do |n|
      multiples_of_n = []
      n.step(number, n) { |x| multiples_of_n << x }

      # removes the prime number
      multiples_of_n.shift

      # subtracts the multiples
      @primes -= multiples_of_n
    end
  end
end

