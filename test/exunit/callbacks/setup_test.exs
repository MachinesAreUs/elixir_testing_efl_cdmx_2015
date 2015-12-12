defmodule SetupTest do
  use ExUnit.Case, async: true
  
  setup do
    {:ok, [name: "Agus", age: 36]}
  end

  test "it knows how to greet", %{name: name} do
    assert SUT.greet(name) == "Hello #{name}!"
  end

  test "it knows what year I was borned", %{age: age} do
    assert SUT.when_was_i_borned?(age) == 1979
  end
  
  test "it knows how to greet", context do
    name = context[:name]
    assert SUT.greet(name) == "Hello #{name}!"
  end
end
