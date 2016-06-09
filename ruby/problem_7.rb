# What is the 10 001st prime number?
primes = [2]
i = 3

while primes.length <= 10001
  if primes.any? { |p| i % p == 0 }
    i += 2
    next
  end
  primes << i
  i += 2
end

puts primes.last
