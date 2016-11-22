defmodule TestControlledApis.PageController do
  use TestControlledApis.Web, :controller

  alias TestControlledApis.Twilio

  def index(conn, _params) do
    # call the module method that is not request dependent
    Twilio.send_text_message(conn, "9512942219", "test text message")

    # call the module method that is request dependent
    text_module.send_text_message("9512942219", "test text message")

    render conn, "index.html"
  end

  defp text_module, do: Application.get_env(:test_controlled_apis, :text_service)
end
