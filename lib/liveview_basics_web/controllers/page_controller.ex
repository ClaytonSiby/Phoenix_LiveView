defmodule LiveviewBasicsWeb.PageController do
  use LiveviewBasicsWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def index(conn, _params) do
    render(conn, :index)
  end

  def show(conn, %{"messenger" => messenger }) do
    render(conn, :show, messenger: messenger)
  end
end
