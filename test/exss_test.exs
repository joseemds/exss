defmodule ExssTest do
  use ExUnit.Case
  doctest Exss

  test "simple ident" do
    assert Exss.Parser.ident("blue") == {:ok, ["blue"], "", %{}, {1,0}, 4}
  end
end
