use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :test_controlled_apis, TestControlledApis.Endpoint,
  http: [port: 4001],
  server: false

config :test_controlled_apis, text_service: TestControlledApis.FakeTwilio

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :test_controlled_apis, TestControlledApis.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "test_controlled_apis_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
