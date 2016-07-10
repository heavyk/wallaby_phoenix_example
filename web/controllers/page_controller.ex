defmodule WallabyPhoenix.PageController do
  use WallabyPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
