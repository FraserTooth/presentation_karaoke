defmodule PresentationKaraokeWeb.PageController do
  use PresentationKaraokeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
