defmodule BelasisWeb.PageController do
  use BelasisWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
