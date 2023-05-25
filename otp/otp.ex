defmodule SimpleQueue do
  use GenServer
  
  @doc """
  start queue and link, this is helper func
  """
  def start_link(state \\ []) do
    GenServer.start_link(__MODULE__, state, name: __MODULE__)
  end

  def queue, do: GenServer.call(__MODULE__, :queue)
  def dequeue, do: GenServer.call(__MODULE__, :dequeue)

  @doc """
  GenServer.init/1
  """
  def init(state), do: {:ok, state}

  @doc"""
  GenServer.handle_call/3
  """
  def handle_call(:dequeue, _from, [value|state]) do
    {:reply, value, state}
  end

  def handle_call(:dequeue, _from, []), do: {:reply, nil, []}

  def handle_call(:queue, _from, state), do: {:reply, state, state}

end
