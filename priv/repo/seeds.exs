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

max_amount = 100
min_amount = 10
min_term = 1
max_term = 30

Repo.delete_all(FirstLoanOffer)
Repo.delete_all(ApplicationConstrain)

for term <- min_term..max_term do
  for amount <- min_amount..max_amount do
    offer = %FirstLoanOffer{
              amount: amount,
              term: term,
              total_amount: amount + term * 2
            }
    Repo.insert offer
  end
end

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
