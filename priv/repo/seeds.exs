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

foo = %FirstLoanOffer{amount: 100, term: 20, total_amount: 120}
bar = %FirstLoanOffer{amount: 100, term: 20, total_amount: 120}

Repo.insert! foo
Repo.insert! bar
