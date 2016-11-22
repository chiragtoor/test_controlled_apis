defmodule TestControlledApis.PageControllerTest do
  use TestControlledApis.ConnCase

  alias TestControlledApis.Twilio

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
