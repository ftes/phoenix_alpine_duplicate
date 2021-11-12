defmodule AlpineDuplicateWeb.PageController do
  use AlpineDuplicateWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
