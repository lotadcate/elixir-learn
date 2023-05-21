defmodule Hello do
  @moduledoc """
  provide say/1
  """

  @doc """
  Hello world.

  ## Examples

      iex> Hello.hello()
      :world

  """
  def say do
    IO.puts "Hello, World"
  end
end
