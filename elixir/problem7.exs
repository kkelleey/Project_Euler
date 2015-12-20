# What is the 10 001st prime number?

defmodule Prime do
  def nth(number) do
    _get_nth_prime([], 2, number)
  end

  defp _get_nth_prime(known_primes, _, n) when length(known_primes) == n do
    List.first(known_primes)
  end

  defp _get_nth_prime(known_primes, current, n) do
    if _is_prime?(current, known_primes) do
      _get_nth_prime([current | known_primes], current + 1, n)
    else
      _get_nth_prime(known_primes, current + 1, n)
    end
  end

  defp _is_prime?(n, known_primes) do
    !Enum.any? known_primes, &(rem(n, &1) == 0)
  end
end
