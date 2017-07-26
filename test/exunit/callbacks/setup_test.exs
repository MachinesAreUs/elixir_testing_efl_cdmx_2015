defmodule SetupTest do
  use ExUnit.Case, async: true

  setup_all do
    IO.puts "running setup_all"
    {:ok, [name: "value"]}
  end

  setup do
    {:ok, [name: "Agus", age: 36]}
  end

  test "setup_all should be called", %{name: value} do
    assert value == "Agus"
  end

  test "it knows how to greet", %{name: name} do
    assert SUT.greet(name) == "Hello #{name}!"
  end

  test "it knows what year I was borned", %{age: age} do
    assert SUT.when_was_i_borned?(age) == 1979
  end

  test "it knows how to greet w/context", context do
    name = context[:name]
    assert SUT.greet(name) == "Hello #{name}!"
  end
end
