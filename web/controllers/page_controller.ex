defmodule EloPhoenix.PageController do
  use EloPhoenix.Web, :controller
  import EloEx

  def index(conn, _params) do
    render conn, "index.html"
  end

  def calculate(conn, %{"ratings" => %{"winner_rating" => winner_rating, "loser_rating" => loser_rating}}) do
    json conn, %{rating_change: EloEx.EloCalculator.rating_change(String.to_integer(winner_rating), String.to_integer(loser_rating)) }

  def show(conn, _params) do
    render conn, "calculate.html"
  end
end
