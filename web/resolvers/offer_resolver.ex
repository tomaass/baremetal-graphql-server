defmodule BaremetalGraphqlServer.OfferResolver do
  alias BaremetalGraphqlServer.Repo
  alias BaremetalGraphqlServer.FirstLoanOffer

  def all(_args, _info) do
    {:ok, Repo.all(FirstLoanOffer)}
  end

  # Repo.one from o in FirstLoanOffer, where: o.amount == ^100 and o.term == ^10

  # def find(%{amount: amount, term: term}, _info) do
  #   IO.puts(amount, term)
  #   Repo.get(FirstLoanOffer, "1")
  # end
end
