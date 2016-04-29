defmodule Messenger.TextMessageTest do
  use ExUnit.Case, async: true

  alias Messenger.TextMessage

  test "new returns an empty Message" do
    assert TextMessage.new == %TextMessage{}
  end

  test "put_text sets the text property" do
    expected = %TextMessage{
      text: "hello"
    }

    message = TextMessage.new
              |> TextMessage.put_text("hello")

    assert message == expected
  end
end
