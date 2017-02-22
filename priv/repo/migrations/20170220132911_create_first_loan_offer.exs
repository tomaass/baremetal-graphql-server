defmodule BaremetalGraphqlServer.Repo.Migrations.CreateFirstLoanOffer do
  use Ecto.Migration

  def change do
    create table(:first_loan_offers) do
      add :amount, :integer
      add :term, :integer
      add :total_amount, :integer
      add :pay_date, :date

      timestamps()
    end

  end
end
