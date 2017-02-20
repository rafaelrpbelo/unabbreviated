defmodule Unabbreviated do
  alias Unabbreviated.Dictionary

  def parse(string) do
    [real, cents] = 
      string
      |> String.split(",")

    unitify_number([real, cents])
  end

  def clean_left_zeros(string) do
    string
    |> String.replace_prefix("0", "")
  end

  def unitify_number([real, cents]) do
    [
      #put_unit(real, "reais"),
      put_unit(cents)
    ]
  end

  def put_unit(string, unit \\ "centavos") do
    value = string
      |> clean_left_zeros
      |> Dictionary.convert

    "#{value} #{unit}"
  end
end
