require 'prime'

puts Prime.take_while { |n| n < 2_000_000 }.reduce(:+)
