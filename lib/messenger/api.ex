defmodule Messenger.API do
  alias Messenger.Request

  @base_url "https://graph.facebook.com/v2.6/me/messages"

  def send_post_request page_access_token, request = %Request{} do
    request
    |> encode_request!
    |> send_http_request(page_access_token, "POST")
  end

  def encode_request! request = %Request{} do
    Poison.encode! request
  end

  def send_http_request body, page_access_token, "POST" do
    url = build_url page_access_token
    HTTPoison.post(url, body, %{"Content-Type" => "application/json"}, [])
  end

  def build_url page_access_token do
    "#{@base_url}?access_token=#{page_access_token}"
  end
end
