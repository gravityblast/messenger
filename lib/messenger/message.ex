defmodule Messenger.Message do
  alias Messenger.TextMessage

  def new_text do
    TextMessage.new
  end
end
