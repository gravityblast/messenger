defmodule Messenger.Recipient do
  alias Messenger.Recipient

  defstruct [:phone_number, :id]

  def new do
    %Recipient{}
  end

  def put_phone_number recipient = %Recipient{}, number do
    Map.put recipient, :phone_number, number
  end

  def put_phone_number nil, number do
    new |> put_phone_number(number)
  end

  def put_id recipient = %Recipient{}, id do
    Map.put recipient, :id, id
  end

  def put_id nil, id do
    new |> put_id(id)
  end
end
