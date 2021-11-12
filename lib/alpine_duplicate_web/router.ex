defmodule AlpineDuplicateWeb.Router do
  use AlpineDuplicateWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {AlpineDuplicateWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AlpineDuplicateWeb do
    pipe_through :browser

    live "/", HomeLive
    live "/alpine", AlpineLive
  end

  # Other scopes may use custom stacks.
  # scope "/api", AlpineDuplicateWeb do
  #   pipe_through :api
  # end
end
