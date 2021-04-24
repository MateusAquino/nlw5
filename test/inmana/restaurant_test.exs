defmodule Inmana.RestaurantTest do
  use Inmana.DataCase

  alias Ecto.Changeset
  alias Inmana.Restaurant

  describe "changeset/1" do
    test "if all params are valid" do
      params = %{name: "Siri Cascudo", email: "sirigueijo@fenda.com"}

      response = Restaurant.changeset(params)

      assert %Changeset{
               changes: %{email: "sirigueijo@fenda.com", name: "Siri Cascudo"},
               valid?: true
             } = response
    end

    test "if some params are invalid" do
      params = %{name: "A", email: "emailAfalso.com"}

      response = Restaurant.changeset(params)

      assert %Changeset{valid?: false} = response

      assert errors_on(response) === %{
               email: ["has invalid format"],
               name: ["should be at least 2 character(s)"]
             }
    end
  end
end
