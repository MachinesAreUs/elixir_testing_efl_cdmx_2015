defmodule EnumProperties do
  use ExUnit.Case
  use EQC.ExUnit

  property "Erlang sequence equals Elixir list" do
    forall {m, n} <- {int, int} do
      :lists.seq(m, n) == Enum.to_list(m..n)
    end
  end

end
