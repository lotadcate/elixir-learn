defmodule FB do
  def say(n) do
    cond do
      Integer.mod(n, 15) == 0 -> "FizzBuzz"
      Integer.mod(n, 3)  == 0 -> "Fizz"
      Integer.mod(n, 5)  == 0 -> "Buzz"
      :else                   -> n
    end   
  end
end

for n <- 1..30 do
  IO.puts FB.say(n)
end
