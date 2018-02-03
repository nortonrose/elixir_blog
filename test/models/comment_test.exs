defmodule BlogElixirGirls.CommentTest do
  use BlogElixirGirls.ModelCase

  alias BlogElixirGirls.Comment

  @valid_attrs %{conent: "some content", name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Comment.changeset(%Comment{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Comment.changeset(%Comment{}, @invalid_attrs)
    refute changeset.valid?
  end
end
