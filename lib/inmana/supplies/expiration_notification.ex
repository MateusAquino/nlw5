defmodule Inmana.Supplies.ExpirationNotification do
  alias Inmana.Mailer
  alias Inmana.Supplies.{ExpirationEmail, GetByExpiration}

  def send do
    GetByExpiration.call()
    |> Task.async_stream(&send_mail/1)
    |> Stream.run()
  end

  defp send_mail({email, supplies}) do
    email
    |> ExpirationEmail.create(supplies)
    |> Mailer.deliver_later!()
  end
end
