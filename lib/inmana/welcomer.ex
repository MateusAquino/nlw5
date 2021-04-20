defmodule Inmana.Welcomer do
  # Recebe nome + idade
  # If nome === banana && idade = 42 -> msg especial
  # else if idade >= 18 -> msg normal
  # else -> joga erro
  # nome deve ser tratado
  def welcome(%{"name" => name, "age" => age}) do
    age = String.to_integer(age)

    name
    |> String.trim()
    |> String.downcase()
    |> evaluate(age)
  end

  defp evaluate("banana", 42), do: {:ok, "You are special"}
  defp evaluate(name, age) when age >= 18, do: {:ok, "Welcome #{name}"}
  defp evaluate(name, _age), do: {:error, "You shall not pass #{name}"}
end
