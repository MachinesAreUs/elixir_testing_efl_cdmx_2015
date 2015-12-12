defmodule OnExitTest do
  use ExUnit.Case
  
  setup do
    context = %{name: "Agus"}
    on_exit fn -> 
      #IO.puts "Running after the test"
    end
    {:ok, context}
  end

  test "it knows how to greet", %{name: name} do
    assert SUT.greet(name) == "Hello #{name}!"
  end

end
