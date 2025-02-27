defmodule BasketballWebsite do
  def extract_from_path(data, path) do
    do_extract_from_path(data, String.split(path, "."))
  end

  def do_extract_from_path(data, []), do: data
  def do_extract_from_path(data, [h | t]), do: do_extract_from_path(data[h], t)

  def get_in_path(data, path) do
    get_in(data, String.split(path, "."))
  end
end
