defmodule  BaremetalGraphqlServer.ApplicationConstrainResolver do
  import Ecto.Query

  alias BaremetalGraphqlServer.Repo
  alias BaremetalGraphqlServer.ApplicationConstrain

  def all(_args, _info) do
    {:ok, Repo.all(ApplicationConstrain)}
  end

  def get_by_type(%{type: type}, _info) do
    query = from c in ApplicationConstrain,
            where: c.type == ^type

    case Repo.one(query) do
      application_constrain -> {:ok, application_constrain}
      nil -> {:error, "Application constrain for type #{type} not found"}
    end
  end
end
