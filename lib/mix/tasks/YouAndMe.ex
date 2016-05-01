defmodule Mix.Tasks.YouAndMe do
  use Mix.Task

  @moduledoc "Lets map-reduce you and me on an infinite loop"
  @shortdoc "Lets map-reduce you and me on an infinite loop"
  def run(_) do
    you_and_me("You", "Me")
  end

  # This is private, just between you and me
  defp you_and_me(you, me) do
    IO.puts "Lets mix together, #{you} and #{me}. Happy one-year-of-functional-love"
    you_and_me(me, you)
  end

end
