defmodule Teenager do
  def hey(input) do
    cond do
      silent?(input)      -> "Fine. Be that way!"
      shouting?(input)    -> "Woah, chill out!"
      questioning?(input) -> "Sure."
      true                -> "Whatever."
    end
  end
  
  defp shouting?(input) do
    String.upcase(input) == input and String.downcase(input) != input
  end
  
  defp silent?(input) do
    String.strip(input) == ""
  end

  defp questioning?(input) do
    String.last(input) == "?"
  end
end