defmodule TestControlledApis.FakeTwilio do
  # this is a test only method to avoid sending texts during test runs
  def send_text_message(phone_number, message) do
    IO.puts "Inside FakeTwilio.send_text_message!"
  end
end