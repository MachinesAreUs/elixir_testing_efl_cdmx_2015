defmodule ErlangSequenceProperties do
  use ExUnit.Case
  use ExCheck

  #  property :erlang_sequence do
  #    for_all {m,n} in {int,int} do
  #      :lists.seq(m,n) == Enum.to_list(m..n)
  #    end
  #  end

  property :erlang_sequence do
    for_all {m,n} in such_that({x,y} in {int,int} when y > x) do
      :lists.seq(m,n) == Enum.to_list(m..n)
    end
  end
end
