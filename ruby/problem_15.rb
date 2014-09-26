#Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
# How many such routes are there through a 20×20 grid?
n = 2

# 2n choose n

numerator = 1

(2*n).downto(1) {|k| numerator *= k}


denom = 1
n.downto(1) {|k| denom *= k}

answer = numerator / (denom **2)

puts answer
