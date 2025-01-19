defmodule NameBadge do
  def print(id, name, department) do
    dep = if department == nil, do: "OWNER", else: String.upcase(department)
    formatted_id = if id == nil, do: "", else: "[#{id}] - "
    "#{formatted_id}#{name} - #{dep}"
  end
end
