defmodule BelasisWeb.Router do
  use BelasisWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BelasisWeb do
    pipe_through :api

    resources "/users", UserController, except: [:new, :edit]
  end

  scope "/", BelasisWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", BelasisWeb do
  #   pipe_through :api
  # end
end
