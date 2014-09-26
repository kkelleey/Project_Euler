n = 1000
string = (2**n).to_s

sum = string.split('').inject(0) {|sum, n| sum + n.to_i}
puts sum

