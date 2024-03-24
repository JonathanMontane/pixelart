defmodule Pixelart.Repo do
  use Ecto.Repo,
    otp_app: :pixelart,
    adapter: Ecto.Adapters.Postgres
end
