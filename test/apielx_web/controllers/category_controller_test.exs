defmodule Apielx.CategoryControllerTest do
  use ApielxWeb.ConnCase

  describe "List categories" do
    test "list all categories", %{conn: conn} do
      conn = get(conn, "/api/categories")

      assert json_response(conn, 200) == []
    end
  end
end
