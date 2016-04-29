defmodule Messenger.MessageTest do
  use ExUnit.Case, async: true

  alias Messenger.TextMessage
  alias Messenger.Message

  test "new_text returns a TextMessage" do
    assert Message.new_text == %TextMessage{}
  end
end

