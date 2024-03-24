defmodule Pixelart.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      PixelartWeb.Telemetry,
      Pixelart.Repo,
      {DNSCluster, query: Application.get_env(:pixelart, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Pixelart.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Pixelart.Finch},
      # Start a worker by calling: Pixelart.Worker.start_link(arg)
      # {Pixelart.Worker, arg},
      # Start to serve requests, typically the last entry
      PixelartWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Pixelart.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    PixelartWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
