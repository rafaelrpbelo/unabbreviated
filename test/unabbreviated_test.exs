defmodule UnabbreviatedTest do
  use ExUnit.Case
  doctest Unabbreviated


  describe "Unabbreviated.parse/1 must return the extensible value" do
    #test "15415,16" do
    #  assert Unabbreviated.parse("15415,16") == "quinze mil quatrocentos e quinze reais e dezesseis centavos"
    #end

    test "0,05" do
      assert Unabbreviated.parse("0,05") == "cinco centavos"
    end

    #test "2,25" do
    #  assert Unabbreviated.parse("2,25") == "dois reais e vinte e cinco centavos"
    #end
  end
end
