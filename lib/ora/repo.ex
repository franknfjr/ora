defmodule Ora.Repo do
  use Ecto.Repo,
    otp_app: :ora,
    adapter: Ecto.Adapters.Jamdb.Oracle
end
