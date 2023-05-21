defmodule Greeter do
  def hello(name) do
    "Hello, " <> name
  end
end

defmodule Length do
  def of([]), do: 0
  def of([_|tail]), do: 1 + of(tail)
end

defmodule Greeter2 do
  def hello(), do: "Hello, anonymous person!"
  def hello(name), do: "Hello, " <> name
  def hello(name1, name2), do: "Hello, " <> name1 <> " and " <> name2
  def hello(n1, n2, n3), do: "Hello, #{n1} and #{n2} and #{n3}"
end

defmodule Greeter3 do
  def hello(%{name: person_name}) do
    IO.puts "Hello, " <> person_name
  end
end

defmodule Greeter4 do
  def hello(%{name: person_name} = person) do
    IO.puts "Hello, " <> person_name
    IO.inspect person
  end
end

defmodule Greeter5 do
  def hello(name), do: phrase() <> name
  defp phrase, do: "Hello, "
end

defmodule Greeter6 do
  def hello(names) when is_list(names) do
    names = Enum.join(names, ", ")
    hello(names)
  end

  def hello(name) when is_binary(name) do
    phrase() <> name
  end

  defp phrase, do: "Hello, "
end

defmodule Greeter7 do
 def hello(name, lan_code \\ "en") do
   phrase(lan_code) <> name
 end

 defp phrase("en"), do: "Hello, "
 defp phrase("es"), do: "Hola, "
end


