defmodule KnuthShuffle do
  @moduledoc """
  The Knuth shuffle algorithm in Elixir.
  """
  def shuffle(lists) do
    list_count = Enum.count(lists)
    Enum.reduce 0..(list_count - 1), lists, fn(i, shuffled_lists) ->
      swap(shuffled_lists, i, rand_uniform(i, list_count))
    end
  end

  defp swap(list, i, j) do
    i_element = Enum.at(list, i)
    j_element = Enum.at(list, j)
    list |> List.replace_at(i, j_element) |> List.replace_at(j, i_element)
  end

  defp rand_uniform(lo, hi) do
    :crypto.rand_uniform(lo, hi)
  end
end