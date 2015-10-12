defmodule ErlangSequenceTest do
  use ExUnit.Case

  test "erlang sequences are lists" do
    assert :lists.seq(1,5)           == Enum.to_list(1..5)
    assert :lists.seq(-10,10)        == Enum.to_list(-10..10)
    assert :lists.seq(164532,164532) == Enum.to_list(164532..164532)
  end
end
