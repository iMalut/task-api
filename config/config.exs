# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :task_api,
  ecto_repos: [TaskApi.Repo]

# Configures the endpoint
config :task_api, TaskApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "p8F5Ujyw1LezPfuJy80OPRNDTo2lpvXskehWbNA3W0tCe3CM7S5DqsijdaFaz/6F",
  render_errors: [view: TaskApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: TaskApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :task_api, TaskApi.Guardian,
       issuer: "task_api",
       secret_key: "GVT6b/JyP/ro6uVqCbWUVZse3ePlziWIkWV3avv5e0fztwkLjz7MT2bBm/SHg6eF"
