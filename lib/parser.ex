defmodule Exss.Parser do
  import NimbleParsec
  whitespace = string(" ")
  whitespaces = repeat(whitespace)

  ident =
    optional(string("-"))
    |> optional(string("-"))
    |> ascii_string([?a..?z,?A..?Z], min: 1)

    defparsec :ident, ident
end
