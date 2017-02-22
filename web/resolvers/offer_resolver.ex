defmodule BaremetalGraphqlServer.OfferResolver do
  alias BaremetalGraphqlServer.Repo
  alias BaremetalGraphqlServer.FirstLoanOffer

  def all(_args, _info) do
    {:ok, Repo.all(FirstLoanOffer)}
  end

  # def find(%{amount: amount, term: term}, _info) do
  #   IO.puts(amount, term)
  #   Repo.get(FirstLoanOffer, "1")
  # end
end
