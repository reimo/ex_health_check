defmodule ExHealthCheck do
  @moduledoc """
  Documentation for `ExHealthCheck`.
  HealthCheck is a simple plug that provides a health check endpoint for your Phoenix application.
  """

  import Plug.Conn

  def init(opts), do: opts

  def call(conn, _opts) do
    uptime_seconds = :erlang.statistics(:wall_clock) |> elem(0) |> div(1000)
    response = %{status: "ok", uptime: uptime_seconds, time: DateTime.utc_now()}
    
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(:ok, Jason.encode!(response))
  end
end
