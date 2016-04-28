defmodule Messenger.RecipientTest do
  use ExUnit.Case, async: true

  alias Messenger.Recipient

  test "new returns an empty Recipient" do
    expected = %Recipient{}
    assert Recipient.new == expected
  end

  test "put_phone_number sets the phone number" do
    number = "12345678"
    expected = %Recipient{phone_number: number}

    recipient = Recipient.new
                |> Recipient.put_phone_number(number)

    assert recipient == expected

    recipient = nil |>
                Recipient.put_phone_number(number)

    assert recipient == expected
  end

  test "put_id sets the id" do
    id = 987
    expected = %Recipient{id: id}

    recipient = Recipient.new |> Recipient.put_id(id)
    assert recipient == expected

    recipient = nil |> Recipient.put_id(id)
    assert recipient == expected
  end
end
