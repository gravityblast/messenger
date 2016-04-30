defmodule Messenger.ChallengeTest do
  use ExUnit.Case, async: true

  alias Messenger.Challenge

  test "verify_token with good token and params" do
    token = "abc"
    params = %{
      "hub.verify_token" => token,
      "hub.challenge" => "hello"
    }

    result = Challenge.verify(token, params)
    assert result == {:ok, "hello"}
  end

  test "verify_token with bad token" do
    token = "abc"
    params = %{
      "hub.verify_token" => "bad_token",
      "hub.challenge" => "hello"
    }

    result = Challenge.verify(token, params)
    assert result == {:error, :bad_token}
  end

  test "verify_token with bad params" do
    token = "abc"
    params = %{
      "hub.verify_token" => "bad_token"
    }

    result = Challenge.verify(token, params)
    assert result == {:error, :bad_params}
  end
end
