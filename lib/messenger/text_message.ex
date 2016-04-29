defmodule Messenger.TextMessage do
  alias Messenger.TextMessage

  defstruct [:text, :attachment]

  def new do
    %TextMessage{}
  end

  def put_text message = %TextMessage{}, text do
    Map.put message, :text, text
  end

  def put_text nil, text do
    new |> put_text(text)
  end
end
