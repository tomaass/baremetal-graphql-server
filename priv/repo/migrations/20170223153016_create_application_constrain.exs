defmodule BaremetalGraphqlServer.Repo.Migrations.CreateApplicationConstrain do
  use Ecto.Migration

  def change do
    create table(:application_constrains) do
      add :type, :string
      add :min, :integer
      add :max, :integer
      add :default_value, :integer
      add :step, :integer

      timestamps()
    end

  end
end
