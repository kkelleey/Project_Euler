lengths = {}
for i in 1..1000000
	k = i
	count = 0
	until k == 1
		k = k % 2 == 0 ? k / 2 : 3 * k + 1
		count += 1 
	end
	lengths[i] = count
end

puts lengths.sort_by {|i, length| length}.last
