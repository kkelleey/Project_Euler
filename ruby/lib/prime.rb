module PrimeModule
  def self.is_prime?(n, primes_less_than_n)
    primes_less_than_n.each do |prime|
      return false if divides?(n, prime)
    end
    return true
  end

  def self.divides?(number, divisor)
    number % divisor == 0
  end
end
