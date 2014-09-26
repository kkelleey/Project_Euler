n = 2

# 2n choose n

numerator = 1

(2*n).downto(1) {|k| numerator *= k}


denom = 1
n.downto(1) {|k| denom *= k}

answer = numerator / (denom **2)

puts answer
