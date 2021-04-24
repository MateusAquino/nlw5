defmodule InmanaWeb.RestaurantsViewTest do
  use InmanaWeb.ConnCase

  import Phoenix.View

  alias Inmana.Restaurant
  alias InmanaWeb.RestaurantsView

  describe "render/2" do
    test "if rendering create.json is passing" do
      params = %{name: "Siri Cascudo", email: "sirigueijo@fenda.com"}
      {:ok, restaurant} = Inmana.create_restaurant(params)

      response = render(RestaurantsView, "create.json", restaurant: restaurant)

      assert %{
               message: "Restaurant created!",
               restaurant: %Restaurant{
                 email: "sirigueijo@fenda.com",
                 id: _id,
                 inserted_at: _inserted,
                 name: "Siri Cascudo",
                 updated_at: _updated
               }
             } = response
    end
  end
end
