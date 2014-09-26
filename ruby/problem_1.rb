sum = 0
for num in 1...1000
	sum += num if num%3 == 0 || num%5 ==0
	puts num
end
puts sum