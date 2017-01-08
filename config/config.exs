# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elo_phoenix,
  ecto_repos: [EloPhoenix.Repo]

# Configures the endpoint
config :elo_phoenix, EloPhoenix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MVgbfKSzhJWHf9sKtAmOShOOnuP/n24EC2PdkKBQrjKPS8zy6PLvLnL5JxFufX4y",
  render_errors: [view: EloPhoenix.ErrorView, accepts: ~w(html json)],
  pubsub: [name: EloPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
