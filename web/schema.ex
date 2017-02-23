defmodule BaremetalGraphqlServer.Schema do
  use Absinthe.Schema
  import_types BaremetalGraphqlServer.Schema.Types

  query do
    field :first_loan_offers, list_of(:first_loan_offer) do
      resolve &BaremetalGraphqlServer.OfferResolver.all/2
    end

    # field :first_loan_offer, type: :first_loan_offer do
    #   arg :amount
    #   arg :term
    #   resolve &BaremetalGraphqlServer.OfferResolver.find/2
    # end

    field :application_constrains, list_of(:application_constrain) do
      resolve &BaremetalGraphqlServer.ApplicationConstrainResolver.all/2
    end
  end
end
