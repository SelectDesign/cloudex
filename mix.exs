defmodule Cloudex.Mixfile do
  use Mix.Project

  def project do
    [
      app: :cloudex,
      version: "1.4.3",
      description: """
        A library that helps with uploading image files and urls to cloudinary.
        Also provides a helper to generate transformations and cloudinary urls pointing to your images
      """,
      package: package(),
      elixir: "~> 1.16",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      preferred_cli_env: [
        vcr: :test,
        "vcr.delete": :test,
        "vcr.check": :test,
        "vcr.show": :test
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Cloudex.Settings, []}
    ]
  end

  defp deps do
    [
      {:credo, "~> 1.7.19", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.40.0", only: :dev},
      {:exvcr, "~> 0.17.1", [only: :test]},
      # Matches Brandhub and RTA
      {:httpoison, "~> 1.8.0"},
      # mix_test_watch 1.4.0 requires elixir 1.18
      {:mix_test_watch, "~> 1.3.0", only: :dev},
      {:jason, "~> 1.4.0", optional: true},
      {:meck, "~> 1.2.0", only: :test},
      {:sobelow, "~> 0.16", only: [:dev, :test], runtime: false, warn_if_outdated: true},
      {:timex, "~> 3.7.13"},
      # Matches Brandhub and RTA
      {:tzdata, "~> 1.1.0"}
    ]
  end

  defp package do
    [
      maintainers: ["Gerard de Brieder"],
      licenses: ["WTFPL"],
      files: ["lib", "mix.exs", "README*", "LICENSE*", "CHANGELOG*"],
      links: %{
        "GitHub" => "https://github.com/smeevil/cloudex",
        "Docs" => "http://smeevil.github.io/cloudex/"
      }
    ]
  end
end
