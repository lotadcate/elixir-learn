defmodule Greeter do
  @moduledoc """
  provide hello/1.
  """
  
  @doc """
  print Hello message.

  ## parameter
    - name: string
  
  ## example
      iex> Greeter.hello("Sean")
      "Hello, Sean"
  """ 

  @spec hello(String.t()) :: String.t()
  def hello(name) do
    "Hello, " <> name
  end
end
