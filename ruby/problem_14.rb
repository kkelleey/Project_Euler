class Fixnum
  def collatz_sequence(sequence = [])
    next_number = self.even? ? self / 2 : 3 * self + 1
    sequence << self
    return sequence if self == 1
    next_number.collatz_sequence(sequence)
  end
end

puts (1..1_000_000).max_by { |n| n.collatz_sequence.length }
