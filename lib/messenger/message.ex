defmodule Messenger.Message do
  alias Messenger.Message

  defstruct [:text, :attachment]

  def new do
    %Message{}
  end

  def put_text message = %Message{}, text do
    Map.put message, :text, text
  end

  def put_text nil, text do
    new |> put_text(text)
  end
end
