# Messenger

Facebook messenger API client for Elixir

## Installation

  1. Add messenger to your list of dependencies in `mix.exs`:

  ```elixir
  def deps do
    [{:messenger, "~> 0.0.1"}]
  end
  ```

  2. Ensure messenger is started before your application:

  ```elixir
  def application do
    [applications: [:messenger]]
  end
  ```


## Usage

```elixir
alias Messenger.Recipient
alias Messenger.Message
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
```
