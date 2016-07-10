defmodule WallabyPhoenix.SmokeTest do
  use WallabyPhoenix.FeatureCase, async: true

  test "users can see the home page", %{session: session} do
    banner =
      session
      |> visit("/")
      |> find(".jumbotron h2")

    assert banner |> has_text?("Welcome to Phoenix")
  end
end
