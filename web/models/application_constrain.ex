defmodule BaremetalGraphqlServer.ApplicationConstrain do
  use BaremetalGraphqlServer.Web, :model

  schema "application_constrains" do
    field :type, :string
    field :min, :integer
    field :max, :integer
    field :default_value, :integer
    field :step, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:type, :min, :max, :default_value, :step])
    |> validate_required([:type, :min, :max, :default_value, :step])
  end
end
