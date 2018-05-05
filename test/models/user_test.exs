defmodule Phoenixcrud.UserTest do
  use Phoenixcrud.ModelCase

  alias Phoenixcrud.User

  @valid_attrs %{email: "some email", username: "some username"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
