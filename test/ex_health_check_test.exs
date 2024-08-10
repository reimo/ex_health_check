defmodule ExHealthCheckTest do
  use ExUnit.Case
  doctest ExHealthCheck

  test "greets the world" do
    assert ExHealthCheck.hello() == :world
  end
end
