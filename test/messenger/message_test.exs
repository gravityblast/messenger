defmodule Messenger.MessageTest do
  use ExUnit.Case, async: true

  alias Messenger.Message
  alias Messenger.Recipient

  test "new returns an empty Message" do
    assert Message.new == %Message{}
  end

  test "put_text sets the text property" do
    expected = %Message{
      text: "hello"
    }

    message = Message.new
              |> Message.put_text("hello")

    assert message == expected
  end
end

