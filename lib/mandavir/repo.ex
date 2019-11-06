defmodule Mandavir.Repo do
  use Ecto.Repo,
    otp_app: :mandavir,
    adapter: Ecto.Adapters.Postgres
end
