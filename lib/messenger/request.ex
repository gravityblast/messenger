defmodule Messenger.Request do
  alias Messenger.Message
  alias Messenger.Recipient
  alias Messenger.Request
  alias Messenger.API

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

  def send request = %Request{}, page_access_token do
    API.send_post_request(page_access_token, request)
  end
end
