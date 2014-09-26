require 'sinatra'

get '/' do
  Twilio::TwiML::Response.new do |r|
    r.Say 'Hello Monkey'
  end.text
end
