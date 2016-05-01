defmodule Mix.Tasks.YouAndMe do
  use Mix.Task

  @moduledoc "Lets map-reduce you and me on an infinite loop"
  @shortdoc "Lets map-reduce you and me on an infinite loop"
  def run(_) do
    you_and_me
  end

  # This is private, just between you and me
  defp you_and_me do
    IO.puts "Lets mix together, you and me"
    you_and_me
  end

end
