defmodule Inmana do
  defdelegate create_restaurant(params), to: Inmana.Restaurants.Create, as: :call
end
