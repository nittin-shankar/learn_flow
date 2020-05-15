defmodule ZomatoBangalore.Repo.Migrations.CreateRestaurants do
  use Ecto.Migration

  def change do
    create table(:restaurants) do
      add :url, :text
      add :address, :text
      add :name, :string
      add :can_order_online, :boolean, default: false, null: false
      add :can_book_table, :boolean, default: false, null: false
      add :rating, :float
      add :raters, :integer
      add :phone, :string
      add :location, :string
      add :restaurant_type, :string

      timestamps()
    end

  end
end
