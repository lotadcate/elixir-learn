defmodule Example.Greetings do
  def morning(name) do
    "Good morning #{name}."
  end

  def evening(name) do
    "Good night #{name}."
  end
end

defmodule Example do
  @greeting "Hello"

  def greeting(name) do
    ~s(#{@greeting} #{name}.)
  end
end

defmodule Example.User do
  @derive {Inspect, only: [:name]}
  defstruct name: nil, roles: []
end

defmodule Sayings.Greetings do
  def basic(name), do: "Hi, #{name}"
end

defmodule Example do
  alias Sayings.Greetings, as: Hi
  def greeting(name), do: Hi.basic(name)
end


