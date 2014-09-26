primes = []
i = 2

while primes.length < 10001
	is_prime = true	
	primes.each do |prime|
		if i % prime == 0
			is_prime = false
			break
		end
	end
	primes << i if is_prime
	i += 1
end

puts primes.last