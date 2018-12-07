defmodule StackTest do
  use ExUnit.Case

  test "pop from stack" do
    assert Stack.Impl.pop([1, 2, 3]) == {1, [2, 3]}
  end
  
  test "push to stack" do
    assert Stack.Impl.push([1, 2, 3], 0) == [0, 1, 2, 3]
  end 
end
