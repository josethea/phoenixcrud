defmodule Phoenixcrud.PageController do
  use Phoenixcrud.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
