defmodule ApielxWeb.FallbackController do
  use ApielxWeb, :controller

  def call(conn, {:error, %Ecto.Changeset{} = changeset}) do
    conn
    |> put_status(:unprocessable_entity)
    |> put_view(ApielxWeb.ChangesetView)
    |> render("error.json", changeset: changeset)
  end
end
