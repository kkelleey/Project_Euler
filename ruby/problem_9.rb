# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

class PythagoreanTriple
  def initialize(sum)
    @sum = sum
  end

  def a_b_c
    a = 1
    loop do
      a += 1
      b = a + 1
      until b == (1000 - a) / 2
        c = 1000 - b - a
        return [a, b, c] if pythagorean_triple?(a, b, c)
        b += 1
      end
    end
  end

  def pythagorean_triple?(a, b, c)
    a**2 + b**2 == c**2
  end
end

# puts "a = #{a}, b = #{b}, c = #{c}"
triple = PythagoreanTriple.new(1000)
a_b_c = triple.a_b_c
puts "product = " + a_b_c.reduce(:*).to_s
