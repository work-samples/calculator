defmodule Calculator.Mixfile do
  use Mix.Project

  @name    :calculator
  @version "0.1.0"

  @deps [
    { :ex_doc,  ">= 0.0.0", only: [ :dev, :test ] },
    { :mix_test_watch, "~> 0.5.0" },
    { :coverex, "~> 1.4.10", only: :test },
  ]

  @aliases [
    "test": "test --color --stale --cover",
  ]

  @test_coverage [
    tool: Coverex.Task,
    console_log: false
  ]


  # ------------------------------------------------------------

  def project do
    in_production = Mix.env == :prod
    [
      app:     @name,
      version: @version,
      elixir:  ">= 1.5.2",
      deps:    @deps,
      aliases: @aliases,
      build_embedded:  in_production,
      test_coverage: @test_coverage,
    ]
  end

  def application do
    [
      extra_applications: [         # built-in apps that need starting
        :logger
      ],
    ]
  end

end
