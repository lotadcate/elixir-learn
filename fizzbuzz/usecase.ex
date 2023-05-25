defmodule FB do
  def say(n) do
    case n do
      n when rem(n, 15) == 0 -> "FizzBuzz"
      n when rem(n, 3)  == 0 -> "Fizz"
      n when rem(n, 5)  == 0 -> "Buzz"
      n                      -> n
    end
  end
end

for n <- 1..30 do
  IO.puts FB.say(n)
end
