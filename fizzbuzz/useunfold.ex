Stream.unfold({1, 1, 1}, fn
  {n, 3, 5} -> {"FizzBuzz", {n+1,   1, 1}}
  {n, 3, b} -> {"Fizz",     {n+1,   1, b+1}}
  {n, f, 5} -> {"Buzz",     {n+1, f+1, 1}}
  {n, f, b} -> {n,          {n+1, f+1, b+1}}
end)
|> Stream.take(30)
|> Enum.each(&IO.puts/1)
