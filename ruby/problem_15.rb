#Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
# How many such routes are there through a 20×20 grid?

# 2n choose n = (2n)! / (n!)**2 for all n >= 0

class Fixnum
  def !
    (1..self).reduce(:*)
  end
end

n = 20
puts (2 * n).! / n.!**2
