defmodule BaremetalGraphqlServer.FirstLoanOfferTest do
  use BaremetalGraphqlServer.ModelCase

  alias BaremetalGraphqlServer.FirstLoanOffer

  @valid_attrs %{amount: 42, pay_date: %{day: 17, month: 4, year: 2010}, term: 42, total_amount: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = FirstLoanOffer.changeset(%FirstLoanOffer{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = FirstLoanOffer.changeset(%FirstLoanOffer{}, @invalid_attrs)
    refute changeset.valid?
  end
end
