defmodule FooCalculator do

  @doc """
    Adds to numbers.

    Examples:

    iex> FooCalculator.add(2,3)
    5
    iex> FooCalculator.add(1.3, 2.4)
    3.7
  """
  def add(x,y) when is_number(x) and is_number(y) do
    x + y
  end
end
