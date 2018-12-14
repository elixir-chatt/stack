defmodule Stack.Api do
  def start() do
    {:ok, pid} = GenServer.start_link(Stack.Genserver.Server, [])
    pid
  end
  
  def push(pid, item) do
    GenServer.call(pid, {:push, item})
  end

  def pop(pid) do
    GenServer.call(pid, :pop)
  end
end