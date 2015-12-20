#Problem: What is the largest prime factor of the number 600851475143 

defmodule LargestPrimeFactor do
  def get_largest_prime_factor(number) do
    # upper_bound = :math.sqrt(number) |> Float.trunc
    upper_bound = 775146
    _get_largest_prime_factor(number, upper_bound)
  end

  defp _get_largest_prime_factor(number, current) do
    if _is_factor_of(number, current) && _is_prime(current) do
      current
    else
      _get_largest_prime_factor(number, current - 1)
    end
  end

  defp _is_factor_of(number, current) do
    rem(number, current) == 0
  end

  defp _is_prime(number) do
    !Enum.any?(2..number - 1, &(rem(number, &1) == 0))
  end
end
