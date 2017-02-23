defmodule BaremetalGraphqlServer.ApplicationConstrainTest do
  use BaremetalGraphqlServer.ModelCase

  alias BaremetalGraphqlServer.ApplicationConstrain

  @valid_attrs %{default_value: 42, max: 42, min: 42, step: 42, type: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = ApplicationConstrain.changeset(%ApplicationConstrain{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = ApplicationConstrain.changeset(%ApplicationConstrain{}, @invalid_attrs)
    refute changeset.valid?
  end
end
