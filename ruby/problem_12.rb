# The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28.
# What is the value of the first triangle number to have over five hundred divisors?

require 'prime'

class Fixnum
  # Number of divisors can be calculated by adding 1 to each power of
  # the prime power factorization and multiplying them together
  def number_of_divisors
    prime_division.reduce(1) { |a, e| a *= (e[1] + 1) }
  end
end

n = 1
triangle_number = 1
until triangle_number.number_of_divisors > 500
  n += 1
  triangle_number += n
end

puts triangle_number
