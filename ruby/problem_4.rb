# Problem 4 
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

upper_bound = 999 * 999
i = upper_bound

def palindromic?(i)
  i.to_s == i.to_s.reverse
end

def product_3_digit(num)
  (100..999).to_a.each do |i|
    return true if num % i == 0 && (num / i).to_s.length == 3
  end
  false
end

loop do
  if palindromic?(i) && product_3_digit(i)
    puts i
    break
  end
  i -= 1
end
