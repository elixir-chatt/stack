defmodule Stack.Server do
  def run(stack) do
    new_stack = listen(stack)
    run(new_stack)
  end
  
  def listen(stack) do
    receive do
      {:push, _pid, new_item} -> 
        Stack.Impl.push(stack, new_item)
      {:pop, pid} -> 
        {new_item, new_stack} = Stack.Impl.pop(stack)
        send(pid, new_item)
        new_stack
    end
  end
end