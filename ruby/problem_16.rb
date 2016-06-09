# What is the sum of the digits of the number 2**1000?

class Bignum
  def digits
    to_s.chars.map(&:to_i)
  end
end

class Fixnum
  def digits
    to_s.chars.map(&:to_i)
  end
end

puts (2**1000).digits.reduce(:+)
