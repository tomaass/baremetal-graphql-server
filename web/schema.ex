defmodule BaremetalGraphqlServer.Schema do
  use Absinthe.Schema
  import_types BaremetalGraphqlServer.Schema.Types

  alias BaremetalGraphqlServer.ApplicationConstrain

  query do
    field :first_loan_offers, list_of(:first_loan_offer) do
      resolve &BaremetalGraphqlServer.OfferResolver.all/2
    end

    field :application_constrains, list_of(:application_constrain) do
      resolve &BaremetalGraphqlServer.ApplicationConstrainResolver.all/2
    end

    field :application_constrain, type: :application_constrain do
      arg :type, non_null(:string)
      resolve &BaremetalGraphqlServer.ApplicationConstrainResolver.get_by_type/2
    end
  end
end
