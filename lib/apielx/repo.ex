defmodule Apielx.Repo do
  use Ecto.Repo,
    otp_app: :apielx,
    adapter: Ecto.Adapters.Postgres
end
