defmodule SimpleQueue do
  use GenServer
  
  @doc """
  start queue and link, this is helper func
  """
  def start_link(state \\ []) do
    GenServer.start_link(__MODULE__, state, name: __MODULE__)
  end

  @doc """
  GenServer.init/1
  """
  def init(state), do: {:ok, state}
end
