#y considering the terms in the Fibonacci sequence whose values do not exceed four million, 
#find the sum of the even-valued terms.

last_num = 1
second_to_last_num = 1
sum = 0

while last_num < 4000000
	new_fib = last_num + second_to_last_num
	second_to_last_num = last_num
	last_num = new_fib
	sum += new_fib if new_fib % 2 == 0
end

puts sum