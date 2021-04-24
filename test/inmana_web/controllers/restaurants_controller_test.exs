defmodule InmanaWeb.RestaurantsControllerTest do
  use InmanaWeb.ConnCase

  describe "create/2" do
    test "if all params are valid", %{conn: conn} do
      params = %{name: "Siri Cascudo", email: "sirigueijo@fenda.com"}

      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:created)

      assert %{
               "message" => "Restaurant created!",
               "restaurant" => %{
                 "id" => _id,
                 "name" => "Siri Cascudo",
                 "email" => "sirigueijo@fenda.com"
               }
             } = response
    end

    test "if some params are invalid", %{conn: conn} do
      params = %{email: "sirigueijo@fenda.com"}

      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:bad_request)

      assert response === %{"message" => %{"name" => ["can't be blank"]}}
    end
  end
end
