defmodule ApielxWeb.CategoryController do
  use ApielxWeb, :controller
  alias Apielx.Categories

  def index(conn, _params) do
    categories = Categories.all()

    conn
    |> put_status(:ok)
    |> render("index.json", categories: categories)
  end
end
