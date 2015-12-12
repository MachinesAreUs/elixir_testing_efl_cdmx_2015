defmodule GroupingTest do
  use ExUnit.Case

  @tag :quick
  test "a test" do
    assert 1 == 1
  end

  @tag :slow
  test "another test" do
    assert 2 == 2
  end

  @tag :slow
  test "yet another test" do
    assert 3 == 3
  end

end
