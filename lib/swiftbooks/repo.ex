defmodule Swiftbooks.Repo do
  use Ecto.Repo,
    otp_app: :swiftbooks,
    adapter: Ecto.Adapters.Postgres
end
