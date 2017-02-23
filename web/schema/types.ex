defmodule BaremetalGraphqlServer.Schema.Types do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: BaremetalGraphqlServer.Repo

  object :first_loan_offer do
    field :id, :id
    field :amount, :integer
    field :term, :integer
    field :total_amount, :integer
  end

  object :application_constrain do
    field :id, :id
    field :type, :string
    field :min, :integer
    field :max, :integer
    field :default_value, :integer
    field :step, :integer
  end
end
