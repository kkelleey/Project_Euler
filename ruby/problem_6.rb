#The sum of the squares of the first ten natural numbers is 385
#The square of the sum of the first ten natural numbers is 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
#n = 100

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


