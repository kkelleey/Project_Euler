require 'prime'
i = 1
sum = 0
found = false

until found
	sum += i
	puts sum
	factors = (1..sum).to_a.select {|x| sum % x == 0}
	break if factors.length > 500
	i += 1
end

puts sum

