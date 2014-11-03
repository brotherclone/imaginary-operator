require 'sinatra'
require 'yaml'

get '/' do
@imgaginarymenu = YAML.load_file('menu.yml')
  Twilio::TwiML::Response.new do |r|
    r.Say 'Hello Monkey'
  end.text
end
