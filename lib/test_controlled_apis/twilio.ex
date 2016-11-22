defmodule TestControlledApis.Twilio do
  # this method is called only in tests
  def send_text_message(%Plug.Conn{adapter: {Plug.Adapters.Test.Conn, _}}, _, _) do
    IO.puts "Inside Twilio.send_text_message, this is detected as a test by pattern matching on conn"
  end
  # production method called whenever not running tests
  def send_text_message(_, phone_number, message) do
    IO.puts "Inside Twilio.send_text_message! This is not a test, conn is real."
    ExTwilio.Api.create(ExTwilio.Message, [to: phone_number, 
                                           from: Application.get_env(:ex_twilio, :send_number), 
                                           body: message])
  end
  # this method sends texts messages without taking in a conn, can be used outside of requests
  def send_text_message(phone_number, message) do
    IO.puts "Inside Twilio.send_text_message! This will actually text someone."
    ExTwilio.Api.create(ExTwilio.Message, [to: phone_number, 
                                           from: Application.get_env(:ex_twilio, :send_number), 
                                           body: message])
  end
end