defmodule InmanaWeb.WelcomeController do
  use InmanaWeb, :controller
  alias Inmana.Welcomer

  def index(conn, params) do
    params
    |> Welcomer.welcome()
    |> handle_response(conn)
  end

  defp handle_response({:ok, message}, conn), do: reply_with(conn, message, :ok)
  defp handle_response({:error, message}, conn), do: reply_with(conn, message, :bad_request)

  defp reply_with(conn, message, status) do
    conn
    |> put_status(status)
    |> json(%{message: message})
  end
end
