defmodule TaskApiWeb.Router do
  use TaskApiWeb, :router

  alias TaskApi.Guardian

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :jwt_authenticated do
    plug Guardian.AuthPipeline
  end

  scope "/api/v1", TaskApiWeb do
    pipe_through :api

    post "/sign_up", UserController, :create
  end

  scope "/api/v1", TaskApiWeb do
    pipe_through [:api, :jwt_authenticated]

    get "/my_user", UserController, :show
  end



end
