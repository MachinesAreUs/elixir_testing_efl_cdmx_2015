defmodule TimeoutTest do
  use ExUnit.Case

  @tag timeout: 200 
  test "slow test" do
    :timer.sleep 500
    assert true
  end
end
