defmodule Stack.Impl do
  def push(stack, value) do
    [value|stack]
  end
  
  def pop([popped|new_stack]) do
    {popped, new_stack}
  end
end