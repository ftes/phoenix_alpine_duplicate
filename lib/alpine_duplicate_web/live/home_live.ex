defmodule AlpineDuplicateWeb.HomeLive do
  use AlpineDuplicateWeb, :live_view

  def render(assigns) do
    ~H"""
    <%= live_redirect "Go to alpine bug (live redirect)", to: "/alpine" %>
    """
  end
end
