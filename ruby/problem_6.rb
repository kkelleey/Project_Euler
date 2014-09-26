n = 100

def sum_of_squares(n)
	sum = 0
	for i in 1..n
		sum += i**2
	end
	return sum
end

def square_of_sum(n)
	(n*(n+1)/2)**2
end

puts square_of_sum(n) - sum_of_squares(n)
puts square_of_sum(n)
puts sum_of_squares(n)


