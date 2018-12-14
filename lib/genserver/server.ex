defmodule Stack.Genserver.Server do
  def init(state) do
    {:ok, state}
  end
  
  def handle_call(:pop, _from, stack) do
    {top, rest} = Stack.Impl.pop(stack)
   {:reply, top, rest}
 end

 def handle_call({:push, new_item}, _from, stack) do
   new_stack = Stack.Impl.push(stack, new_item)
   {:reply, :ok, new_stack}
 end
end