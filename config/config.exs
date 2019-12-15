# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :presentation_karaoke,
  ecto_repos: [PresentationKaraoke.Repo]

# Configures the endpoint
config :presentation_karaoke, PresentationKaraokeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "f9uKH6GW/4vZryH5nl3ITh58eUd4ppsk1P7GueFMo7lATGwMRv9lannhNTI6HtJA",
  render_errors: [view: PresentationKaraokeWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PresentationKaraoke.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
