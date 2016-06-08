#Find the sum of all the multiples of 3 or 5 below 1000.

class SumCalculator
  def initialize(number1, number2, upper_bound)
    @number1 = number1
    @number2 = number2
    @upper_bound = upper_bound
  end

  def sum_of_multiples_below_upper_bound
    lcm = @number1.lcm(@number2)
    sum_of_multiples_of(@number1) + sum_of_multiples_of(@number2) -
      sum_of_multiples_of(lcm)
  end

  private

  def sum_of_multiples_of(n)
    modified_bound = @upper_bound / n
    (1..modified_bound).reduce(0) { |a, e| a + n * e }
  end
end

puts SumCalculator.new(3, 5, 1000).sum_of_multiples_below_upper_bound
