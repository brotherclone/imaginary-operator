require 'rubygems'
require 'sinatra'
require 'twilio-ruby'

get '/index' do
  Twilio::TwiML::Response.new do |r|
    r.Say 'This is the Imaginary Foundation.'
  end.text
end