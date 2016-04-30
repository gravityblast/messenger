defmodule Messenger.Challenge do
  def verify(token, %{"hub.verify_token" => received_token,
                                "hub.challenge" => challenge}) do

    case token == received_token do
      true -> {:ok, challenge}
      _    -> {:error, :bad_token}
    end
  end

  def verify token, _ do
    {:error, :bad_params}
  end
end
