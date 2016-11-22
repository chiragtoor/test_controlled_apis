# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :test_controlled_apis,
  ecto_repos: [TestControlledApis.Repo]

# Configures the endpoint
config :test_controlled_apis, TestControlledApis.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+I3Bgr7rrDz/IFaCQ0KB4L2ISvkSd88KJ4Su6rEGvC+6rBjXDkTgOloKgDio5+OL",
  render_errors: [view: TestControlledApis.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TestControlledApis.PubSub,
           adapter: Phoenix.PubSub.PG2]

config :test_controlled_apis, text_service: TestControlledApis.Twilio

config :ex_twilio, account_sid: System.get_env("TWILIO_ACCOUNT_SID"),
                   auth_token:  System.get_env("TWILIO_AUTH_TOKEN"),
                   send_number: System.get_env("TWILIO_PHONE_NUMBER")



# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
