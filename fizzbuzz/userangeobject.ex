1..30
|> Enum.map(fn n -> 
     cond do
       Integer.mod(n, 15) == 0 -> "FizzBuzz"
       Integer.mod(n, 3)  == 0 -> "Fizz"
       Integer.mod(n, 5)  == 0 -> "Buzz"
       true                    -> n
     end
   end)
|> IO.inspect
