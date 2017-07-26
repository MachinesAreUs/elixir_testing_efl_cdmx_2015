defmodule Palindrome do
  @moduledoc """
  Functions relatd to palindromes
  """

  def is_palindrome?(xs) do
    str = to_string xs
    String.reverse(str) == str
  end
end
