require 'sinatra'
require 'sinatra/reloader'

set :port, 3003
set :bind, '0.0.0.0'

get '/' do
  DateTime.now.to_s
end