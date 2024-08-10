defmodule ExHealthCheck.Router do
    defmacro health_check_route do
      quote do
        get "/health", ExHealthCheck, :index
      end
    end
  end
  