require 'sinatra'
require 'sinatra/reloader'

set :port, 3003
set :bind, '0.0.0.0'
enable :sessions 

visits ||= 0
users ||= []
password ||= []

get "/" do 
	p params
	visits += 1
	@users = []
	@user_id = params["userid"]
	@password_id = params["password"]
	@users << @user_id
	@password << @password_id
	erb :home
end

get "/signup" do
	erb :signup
end

sessionid = {users.length => params[user_id]}