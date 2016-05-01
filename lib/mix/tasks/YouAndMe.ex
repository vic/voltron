defmodule Mix.Tasks.YouAndMe do
  use Mix.Task

  @moduledoc "Lets map-reduce you and me on an infinite loop"
  @shortdoc "Lets map-reduce you and me on an infinite loop"
  def run(_) do
    you_and_me("you", "me")
  end

  # This is private, just between you and me
  defp you_and_me(you, me) do
    "Lets mix together, you and me. " <> mix(you, me) |> IO.puts
    you_and_me(me, you)
  end

  defp mix(you, me) do
    [you, me] |> Enum.map(&String.capitalize/1) |> Enum.reduce(&happy/2)
  end

  defp happy(you, me) do
    "Happy one year of funtional love between #{you} and #{me}"
  end


end
