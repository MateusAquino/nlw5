defmodule Inmana.Supplies.Create do
  alias Inmana.{Supply, Repo}

  def call(params) do
    params
    |> Supply.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:ok, %Supply{} = result}), do: {:ok, result}
  defp handle_insert({:error, result}), do: {:error, %{result: result, status: :bad_request}}
end
