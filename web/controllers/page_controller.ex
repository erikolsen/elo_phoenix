defmodule EloPhoenix.PageController do
  use EloPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
