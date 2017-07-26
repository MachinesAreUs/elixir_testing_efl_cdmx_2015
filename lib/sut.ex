defmodule SUT do
  @moduledoc """
  System Under Test (just an example)
  """

  def greet(name) do
    "Hello #{name}!"
  end

  def when_was_i_borned?(age) do
    2015 - age
  end

end
