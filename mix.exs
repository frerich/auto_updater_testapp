defmodule AutoUpdaterTestapp.MixProject do
  use Mix.Project

  def project do
    [
      app: :auto_updater_testapp,
      version: version(),
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      releases: [
        auto_updater_testapp: [
          steps: [:assemble, :tar]
        ]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {AutoUpdaterTestapp.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:auto_updater, github: "frerich/auto_updater"}
    ]
  end

  defp version do
    {<<"v", rest::binary>>, 0} = System.cmd("git", ["describe", "--tags"])
    String.trim(rest)
  end
end
