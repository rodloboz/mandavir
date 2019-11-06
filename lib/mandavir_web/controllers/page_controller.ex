defmodule MandavirWeb.PageController do
  use MandavirWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
