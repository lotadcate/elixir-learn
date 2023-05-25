defmodule FB do
  def say(n) when rem(n, 15) == 0, do: "FizzBuzz"
  def say(n) when rem(n, 3)  == 0, do: "Fizz"
  def say(n) when rem(n, 5)  == 0, do: "Buzz"
  def say(n), do: n
end

for n <- 1..30 do
  IO.puts FB.say(n)
end
