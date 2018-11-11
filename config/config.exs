# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :swiftbooks,
  ecto_repos: [Swiftbooks.Repo]

# Configures the endpoint
config :swiftbooks, SwiftbooksWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xlbD8eNgfuBKrLjU8jBHb6nbzrQ1Rbm9O2HspXUqGdWLHt35Vnz34jKjCPHGEBxe",
  render_errors: [view: SwiftbooksWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Swiftbooks.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :swiftbooks, SwiftbooksWeb.Gettext, default_locale: "es"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
