defmodule InmanaWeb.Router do
  use InmanaWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", InmanaWeb do
    pipe_through :api

    get "/", WelcomeController, :index

    post "/restaurants", RestaurantsController, :create
  end
end
