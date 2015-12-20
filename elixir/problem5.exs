# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?

defmodule SmallestNumber do
  def evenly_divisible(range) do
    Enum.reduce(range, 1, fn(x, acc) -> _lcm(x, acc) end)
  end

  defp _lcm(num1, num2) do
    div num1 * num2, _gcd(num1, num2)
  end

  defp _gcd(num1, 0), do: num1
  defp _gcd(num1, num2), do: _gcd(num2, rem(num1, num2))
end
