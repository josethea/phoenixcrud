# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenixcrud,
  ecto_repos: [Phoenixcrud.Repo]

# Configures the endpoint
config :phoenixcrud, Phoenixcrud.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2gcFEAQEr1J0HwSPuYWsyMKrfp9aBQn2oXuf2lJUHtcpDaWNRViwXPmaovEMujs4",
  render_errors: [view: Phoenixcrud.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phoenixcrud.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
