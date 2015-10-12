defmodule GroupingTest do
  use ExUnit.Case

  @tag :quick
  test "a test" do
    assert true
  end

  @tag :slow
  test "another test" do
    assert true
  end

  @tag :slow
  test "yet another test" do
    assert true
  end

end
