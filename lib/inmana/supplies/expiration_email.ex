defmodule Inmana.Supplies.ExpirationEmail do
  import Bamboo.Email

  def create(email, supplies) do
    new_email(
      to: email,
      from: "support@inmana.com.br",
      subject: "Supplies are about to expire!",
      text_body: to_text(supplies)
    )
  end

  defp to_text(supplies) do
    supplies
    |> Enum.reduce(
      " ---------- You have some supplies that are about to expire! ---------- \n",
      fn supply, email ->
        email <>
          "Description: #{supply.description}\n" <>
          "Responsible: #{supply.responsible}\n" <>
          "Expires: #{supply.expiration_date}\n\n"
      end
    )
  end
end
