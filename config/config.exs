# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mandavir,
  ecto_repos: [Mandavir.Repo]

# Configures the endpoint
config :mandavir, MandavirWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "i//3fWTi7L+0g7vdTDrt0YCO1DYCZU919F0b6oP0KpO2z8l1g8efKnMAIN8i1Zjf",
  render_errors: [view: MandavirWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mandavir.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :phoenix,
  template_engines: [leex: Phoenix.LiveView.Engine] 

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
