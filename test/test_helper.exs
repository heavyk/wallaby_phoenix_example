{:ok, _} = Application.ensure_all_started(:wallaby)

ExUnit.start

Ecto.Adapters.SQL.Sandbox.mode(WallabyPhoenix.Repo, :manual)
Application.put_env(:wallaby, :base_url, WallabyPhoenix.Endpoint.url)
