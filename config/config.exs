# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :wallaby_phoenix,
  ecto_repos: [WallabyPhoenix.Repo]

# Configures the endpoint
config :wallaby_phoenix, WallabyPhoenix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uC2Krd6f+M5bdSRPtpc6OYd0BXPRlareXfvbxOzAbOnkXXDd4etYAbFjKP/zxIWC",
  render_errors: [view: WallabyPhoenix.ErrorView, accepts: ~w(html json)],
  pubsub: [name: WallabyPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
