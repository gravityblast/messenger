#!/usr/bin/env mix run

alias Messenger.Recipient
alias Messenger.TextMessage
alias Messenger.Request

page_access_token = System.get_env "PAGE_ACCESS_TOKEN"
my_user_id = System.get_env "MY_USER_ID"

recipient = Recipient.new
            |> Recipient.put_id(my_user_id)

message = TextMessage.new
          |> TextMessage.put_text("Hello world")

resp = Request.new
        |> Request.put_recipient(recipient)
        |> Request.put_message(message)
        |> Request.send(page_access_token)

IO.puts (inspect resp)
