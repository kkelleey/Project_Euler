upper_bound = 999 * 999

i = upper_bound



def is_palindromic(i)
	string = i.to_s
	string == string.reverse
end

def product_3_digit(num)
	(100..999).to_a.each do |i|
		if num % i == 0 && (num / i).to_s.length == 3
			return true
		end
	end
	false
end

until i == 0
	if is_palindromic(i) && product_3_digit(i)
		puts i
		break
	end
	i -= 1
end