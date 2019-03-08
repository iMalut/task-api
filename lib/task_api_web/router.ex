defmodule TaskApiWeb.Router do
  use TaskApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", TaskApiWeb do
    pipe_through :api

    resources "/users", UserController #, only: [:create, :show]
  end
end
