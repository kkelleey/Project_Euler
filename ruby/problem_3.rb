#Problem: What is the largest prime factor of the number 600851475143 ?

number = 600851475143
upper_bound = Math.sqrt(number)
prime_factors = []

for i in 2..upper_bound
	if number % i == 0
		is_prime = true  #set to true by default until we find out otherwise
		prime_factors.each do |prime|
			if i % prime == 0 
				is_prime = false
				break
			end
		end
		prime_factors << i if is_prime
	end
end

puts prime_factors.last

