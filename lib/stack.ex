defmodule Stack do
  def start() do
    spawn( &function_to_spawn/0 )
  end
  
  def function_to_spawn() do
    Stack.Server.run([])
  end
  
  def pop(pid) do
    send(pid, {:pop, self()})
    receive do 
      top_item -> top_item
    end
  end
  
  def push(pid, new_item) do
    send(pid, {:push, self(), new_item})
  end
end
