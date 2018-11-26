defmodule Belasis.Repo do
  use Ecto.Repo,
    otp_app: :belasis,
    adapter: Ecto.Adapters.MySQL
end
