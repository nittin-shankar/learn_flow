defmodule ZomatoBangalore.Restaurants.Restaurant do
  use Ecto.Schema
  import Ecto.Changeset

  schema "restaurants" do
    field :address, :string
    field :can_book_table, :boolean, default: false
    field :can_order_online, :boolean, default: false
    field :location, :string
    field :name, :string
    field :phone, :string
    field :raters, :integer
    field :rating, :float
    field :restaurant_type, :string
    field :url, :string

    timestamps()
  end

  @doc false
  def changeset(restaurant, attrs) do
    restaurant
    |> cast(attrs, [:url, :address, :name, :can_order_online, :can_book_table, :rating, :raters, :phone, :location, :restaurant_type])
    |> validate_required([:url, :address, :name, :can_order_online, :can_book_table, :rating, :raters, :phone, :location, :restaurant_type])
  end
end
