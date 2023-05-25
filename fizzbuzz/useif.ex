defmodule FB do
  def say(n) do
    if Integer.mod(n, 15) == 0, do: "FizzBuzz" 
    if Integer.mod(n, 3) == 0 do "Fizz" 
      else if Integer.mod(n, 5) == 0 do "Buzz" 
        else n
      end 
    end
  end
end

for n <- 1..30 do
  IO.puts FB.say(n)
end
