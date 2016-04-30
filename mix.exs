defmodule Messenger.Mixfile do
  use Mix.Project

  @description """
    Facebook messenger API client for Elixir
  """

  def project do
    [app: :messenger,
     version: "0.0.2",
     elixir: "~> 1.2",
     name: "Messenger",
     description: @description,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :httpoison]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:httpoison, "~> 0.8.0"},
      {:poison, "~> 1.5.2"}]
  end

  defp package do
    [ maintainers: ["Andrea Franz"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/pilu/messenger"} ]
  end
end
