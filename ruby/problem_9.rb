#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

a = 0 
found = false

until found
	a += 1
	b = a + 1
	until b == (1000 - a)/2
		c = 1000 - b - a
		if a ** 2 + b ** 2 == c ** 2
			found = true
			break
		end
		b += 1
	end
end

puts "a = #{a}, b = #{b}, c = #{c}"
puts "product = "+ (a * b * c).to_s