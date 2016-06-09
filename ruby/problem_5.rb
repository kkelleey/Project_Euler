# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

lcm = (1..20).reduce(1) do |a, e|
  e.lcm(a)
end

puts lcm
