defmodule ApielxWeb.CategoryController do
  use ApielxWeb, :controller

  def index(conn, _params) do
    conn
    |> put_status(:ok)
    |> json(%{hi: "hello"})
  end
end
