defmodule Messenger.Request do
  alias Messenger.Message
  alias Messenger.Recipient
  alias Messenger.Request

  defstruct [recipient: %Recipient{}, message: %Message{}]

  def new do
    %Request{}
  end

  def put_recipient request = %Request{}, recipient = %Recipient{} do
    Map.put request, :recipient, recipient
  end

  def put_message request = %Request{}, message = %Message{} do
    Map.put request, :message, message
  end
end
