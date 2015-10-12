defmodule ReverseProperties do
  use ExUnit.Case
  use ExCheck
  import Enum
  import Palindrome

  property :reverse_of_reverse_is_identity do
    for_all xs in list(char) do
      xs |> reverse |> reverse == xs
    end
  end

  property :reverse_length do
    for_all xs in list(char) do
      xs |> reverse |> length == xs |> length
    end
  end 

  property :reverse_of_palindrome_is_identity do
    for_all xs in list(char) do
      implies is_palindrome? xs do
        reverse(xs) == xs
      end
    end     
  end
end
