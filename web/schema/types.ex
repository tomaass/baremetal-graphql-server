defmodule BaremetalGraphqlServer.Schema.Types do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: BaremetalGraphqlServer.Repo

  object :first_loan_offer do
    field :id, :id
    field :amount, :integer
    field :term, :integer
    field :total_amount, :integer
  end
end
