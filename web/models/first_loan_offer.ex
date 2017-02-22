defmodule BaremetalGraphqlServer.FirstLoanOffer do
  use BaremetalGraphqlServer.Web, :model

  schema "first_loan_offers" do
    field :amount, :integer
    field :term, :integer
    field :total_amount, :integer
    field :pay_date, Ecto.Date
    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:amount, :term, :total_amount, :pay_date])
    |> validate_required([:amount, :term, :total_amount])
  end
end
