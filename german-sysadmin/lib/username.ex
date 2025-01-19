defmodule Username do
  def sanitize(username) do
    username
    |> Enum.map(&clean_char/1)
    |> List.flatten()
  end

  defp clean_char(char) when char in ?a..?z, do: char
  defp clean_char(?ä), do: 'ae'
  defp clean_char(?ö), do: 'oe'
  defp clean_char(?ü), do: 'ue'
  defp clean_char(?ß), do: 'ss'
  defp clean_char(?_), do: '_'
  defp clean_char(_), do: ''
end
