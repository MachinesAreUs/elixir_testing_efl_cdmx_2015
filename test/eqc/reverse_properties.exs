defmodule ReverseProperties do
  use ExUnit.Case, async: true
  use EQC.ExUnit
  import Enum
  import Palindrome

  property "length of reverse equals original length" do
    forall xs <- list(char) do
      xs |> reverse |> length == xs |> length
    end
  end 

  property "reverse of reverse is identity" do
    forall xs <- list(char) do
      xs |> reverse |> reverse == xs
    end
  end

  property "reverse of palindrome is identity" do
    forall xs <- list(char) do
      implies is_palindrome? xs do
        reverse(xs) == xs
      end
    end     
  end
end
