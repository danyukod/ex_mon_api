defmodule ExMonApiWeb.WelcomeController do
  use ExMonApiWeb, :controller

  def index(conn, _params) do
    IO.puts("-------------------------------------------------------")
    IO.inspect conn
    IO.puts("-------------------------------------------------------")
    text(conn, "Welcome to ExMon API Web!")
  end

end