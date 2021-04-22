defmodule Inmana.Supplies.GetByExpiration do
  import Ecto.Query

  alias Inmana.{Repo, Supply, Restaurant}

  def call do
    today = Date.utc_today()
    bow = today |> Date.beginning_of_week()
    eow = today |> Date.end_of_week()

    query =
      from s in Supply,
        where: s.expiration_date >= ^bow and s.expiration_date < ^eow,
        preload: [:restaurant]

    query
    |> Repo.all()
    |> Enum.group_by(fn %Supply{restaurant: %Restaurant{email: email}} -> email end)
  end
end
