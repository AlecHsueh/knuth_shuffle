defmodule KnuthShuffle.Mixfile do
  use Mix.Project

  def project do
    [
      app: :knuth_shuffle,
      version: "0.1.1",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "Knuth_shuffle",
      source_url: "https://github.com/AlecHsueh/knuth_shuffle"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end

  defp description() do
    "The Knuth shuffle algorithm in Elixir."
  end

  defp package() do
    [
      name: "knuth_shuffle",
      maintainers: ["alechsueh"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/AlecHsueh/knuth_shuffle"}
    ]
  end
end
