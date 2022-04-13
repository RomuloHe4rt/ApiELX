defmodule Apielx.CategoriesTest do
  use Apielx.DataCase

  alias Apielx.Categories
  alias Apielx.Categories.Category

  test "give a call to list categories return all" do
    assert Categories.all() == []
  end

  test "give information about categories should create one" do
    payload = %{
      name: "Sport",
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
    }

    assert {:ok, %Category{} = category} = Categories.create(payload)
    assert category.name == payload.name
    assert category.description == payload.description
  end
end
