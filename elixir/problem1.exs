# Find the sum of all the multiples of 3 or 5 below 1000

defmodule Sum do
  def multiples_of_3_or_5_below(number) do
    Enum.reduce(3..number - 1, 0, fn(x, acc) ->
      cond do
        rem(x, 3) == 0 -> acc + x
        rem(x, 5) == 0 -> acc + x
        true -> acc
      end
    end)
  end
end
