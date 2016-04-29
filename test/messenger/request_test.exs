defmodule Messenger.RequestTest do
  use ExUnit.Case, async: true

  alias Messenger.TextMessage
  alias Messenger.Recipient
  alias Messenger.Request

  test ".new" do
    assert Request.new == %Request{}
  end

  test ".put_recipient" do
    recipient = %Recipient{id: 123}
    expected = %Request{
      recipient: recipient
    }

    request = Request.new
              |> Request.put_recipient(recipient)

    assert request == expected
  end

  test ".put_message" do
    message = %TextMessage{text: "hello world"}
    expected = %Request{
      message: message
    }

    request = Request.new
              |> Request.put_message(message)

    assert request == expected
  end
end
