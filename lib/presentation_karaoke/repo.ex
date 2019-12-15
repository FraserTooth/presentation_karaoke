defmodule PresentationKaraoke.Repo do
  use Ecto.Repo,
    otp_app: :presentation_karaoke,
    adapter: Ecto.Adapters.Postgres
end
