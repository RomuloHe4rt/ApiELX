defmodule Apielx.Categories do
  alias Apielx.Categories.Category
  alias Apielx.Repo

  def all do
    Repo.all(Category)
  end
end
