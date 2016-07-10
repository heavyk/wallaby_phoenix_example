defmodule WallabyPhoenix.PostDeleteTest do
  use WallabyPhoenix.FeatureCase, async: true

  test "posts can be deleted", %{session: session} do
    page =
      session
      |> visit("/posts")
      |> click_link("New post")
      |> fill_in("Body", with: "This is a test")
      |> click_on("Submit")

    page
    |> find(".post")
    |> click_link("Delete")
    |> 

    page |> take_screenshot

    assert page |> find("tr", count: 0)
  end
end
