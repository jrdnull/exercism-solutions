defmodule Words do
  @punctuation ~r/[&@$%^&:!,_]/

  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map() 
  def count(sentence) do
		Regex.replace(@punctuation, sentence, " ")
		|> String.downcase
		|> String.split
		|> Enum.group_by(&(&1))
		|> Enum.reduce(%{}, fn ({x, xs}, acc) -> Map.put(acc, x, Enum.count(xs)) end)
	end
end