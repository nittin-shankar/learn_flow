defmodule ZomatoBangalore.Repo do
  use Ecto.Repo,
    otp_app: :zomato_bangalore,
    adapter: Ecto.Adapters.Postgres
end
