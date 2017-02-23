defmodule  BaremetalGraphqlServer.ApplicationConstrainResolver do
  alias BaremetalGraphqlServer.Repo
  alias BaremetalGraphqlServer.ApplicationConstrain

  def all(_args, _info) do
    {:ok, Repo.all(ApplicationConstrain)}
  end
end
