$LOAD_PATH << '.'
require 'lib/prime'

n = 2000000
primes = []
sum = 0

2.upto(n) do |k|
  if PrimeModule.is_prime?(k, primes)
    primes << k
    sum += k
  end
end

puts sum
