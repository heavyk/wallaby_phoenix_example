defmodule WallabyPhoenix.PostDeleteTest do
  use WallabyPhoenix.FeatureCase, async: true

  test "posts can be deleted", %{session: session} do
    page =
      session
      |> visit("/posts")
      |> click_link("New post")
      |> fill_in("Body", with: "This is a test")
      |> click_on("Submit")

    # dumb hack to confirm the prompt "Are you sure you want to..."
    # phantomjs does not allow interaction with alert boxes.
    # however, this will work:
    session |> execute_script("window.confirm = window.alert = window.prompt = function () { return true }")

    page
    |> find(".post")
    |> click_link("Delete")

    page |> take_screenshot

    assert page |> find(".post", count: 0)
  end
end
