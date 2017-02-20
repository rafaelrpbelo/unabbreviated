defmodule Unabbreviated.Dictionary do
  @dict %{
    "5" => ["cinco", "cinquenta", "quinhentos"]
  }

  def convert(string, idx \\ 0) do
    IO.puts string
    IO.puts idx
    @dict[string]
    |> Enum.at idx
  end
end
