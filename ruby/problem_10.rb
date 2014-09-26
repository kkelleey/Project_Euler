require 'prime'
n = 2000000
sum = 0


Prime.each do |prime|
	prime < n ? sum += prime : break
end

puts sum


