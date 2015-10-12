defmodule FileTest do
  use ExUnit.Case

  setup context do
    # Read the :cd tag value
    if cd = context[:cd] do
      prev_cd = File.cwd!
      File.cd!(cd)
      on_exit fn -> File.cd!(prev_cd) end
    end
    :ok
  end

  @tag cd: "fixtures"
  test "reads file in /fixtures folder" do
    {:ok, line} = File.read("hello.txt")
    assert line == "Hello there\n"
  end
end
