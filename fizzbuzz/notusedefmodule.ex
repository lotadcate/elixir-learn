fb = fn
  n when rem(n, 15) == 0 -> "FizzBuzz"
  n when rem(n, 3)  == 0 -> "Fizz"
  n when rem(n, 5)  == 0 -> "Buzz"
  n                      -> n
end

Enum.each(1..30, fn n -> IO.puts fb.(n) end)
