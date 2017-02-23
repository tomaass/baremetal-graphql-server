# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     BaremetalGraphqlServer.Repo.insert!(%BaremetalGraphqlServer.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias BaremetalGraphqlServer.Repo
alias BaremetalGraphqlServer.FirstLoanOffer
alias BaremetalGraphqlServer.ApplicationConstrain

Repo.insert %FirstLoanOffer{amount: 100, term: 20, total_amount: 120}
Repo.insert %FirstLoanOffer{amount: 100, term: 20, total_amount: 120}

Repo.insert %ApplicationConstrain{
  type: "amount",
  min: 10,
  max: 100,
  default_value: 50,
  step: 10
}

Repo.insert %ApplicationConstrain{
  type: "term",
  min: 1,
  max: 30,
  default_value: 15,
  step: 1
}
