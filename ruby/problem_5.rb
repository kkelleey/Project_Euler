found = false
i = 20

until i == 20 * 19 * 18 * 17 * 15 * 14 * 13 * 12 * 11
	all_are_divisors = true
	(11..20).to_a.each do |j|
		unless i % j == 0
			all_are_divisors = false
			break
		end
	end
	break if all_are_divisors
	i += 1
end
