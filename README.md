# TestControlledApis

This example project shows how to avoid calling third party APIs when running tests. In this example
 we are using [Twilio](https://www.twilio.com) via the [ExTwilio library](https://github.com/danielberkompas/ex_twilio) in order to add
 SMS related features.

To run this you need to add 3 environment variables in order to run the Twilio service:
  TWILIO_ACCOUNT_SID
  TWILIO_AUTH_TOKEN
  TWILIO_PHONE_NUMBER

You can get all 3 by setting up a account at Twilio. Once you do that, run `mix test` and you should
  see print statements showing how when running a test the Twilio API calls are avoided.

If you do a simple curl request you should see a actual text message sent, `curl -X GET http://localhost:4000`
