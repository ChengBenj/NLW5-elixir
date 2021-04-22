# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :inmana,
  ecto_repos: [Inmana.Repo]

config :inmana, Inmana.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

# Configures the endpoint
config :inmana, InmanaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "N9/r0hsw5NPxDno+8m7YOmDynvfrtp02+2tzr6jtU7BLYwtNYPuu00WXrLoyc64s",
  render_errors: [view: InmanaWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Inmana.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
