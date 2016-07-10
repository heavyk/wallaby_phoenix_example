use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :wallaby_phoenix, WallabyPhoenix.Endpoint,
  http: [port: 4001],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :wallaby_phoenix, WallabyPhoenix.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "wallaby_phoenix_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :wallaby_phoenix,
  sql_sandbox: true

config :wallaby,
  max_wait_time: 6_000,
  screenshot_on_failure: true
