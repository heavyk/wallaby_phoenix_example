defmodule WallabyPhoenix.FeatureCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      use Wallaby.DSL

      import Ecto.Model
      import Ecto.Query, only: [from: 2]
      import WallabyPhoenix.Router.Helpers
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(WallabyPhoenix.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(WallabyPhoenix.Repo, {:shared, self()})
    end
    
    metadata = Phoenix.Ecto.SQL.Sandbox.metadata_for(WallabyPhoenix.Repo, self())
    {:ok, session} = Wallaby.start_session(metadata: metadata)
    {:ok, session: session}
  end
end
