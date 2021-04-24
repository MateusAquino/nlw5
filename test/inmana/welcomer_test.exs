defmodule Inmana.WelcomerTest do
  use ExUnit.Case

  alias Inmana.Welcomer

  describe "welcome/1" do
    test "if user is special" do
      params = %{"name" => "baNanA", "age" => "42"}
      result = Welcomer.welcome(params)

      assert result === {:ok, "You are special"}
    end

    test "if user is not special" do
      params = %{"name" => "MaTeus", "age" => "18"}
      result = Welcomer.welcome(params)

      assert result === {:ok, "Welcome mateus"}
    end

    test "if user is forbidden" do
      params = %{"name" => "Random", "age" => "15"}
      result = Welcomer.welcome(params)

      assert result === {:error, "You shall not pass random"}
    end
  end
end
