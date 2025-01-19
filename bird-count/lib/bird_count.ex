defmodule BirdCount do
  def today([]), do: nil
  def today(list), do: hd(list)

  def increment_day_count([]), do: [1]
  def increment_day_count(list), do: [hd(list) + 1 | tl(list)]

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?(list), do: Enum.member?(list, 0)

  def total(list), do: Enum.sum(list)

  def busy_days(list), do: Enum.count(list, &(&1 > 4))
end
