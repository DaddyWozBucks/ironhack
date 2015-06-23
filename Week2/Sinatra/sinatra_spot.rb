require 'sinatra'
require 'sinatra/reloader'

set :port, 3003
set :bind, '0.0.0.0'

songs ||= 0

get '/' do
  "Hi there! There are  #{songs} in the list."
  if songs >= 10
    redirect('/enough')
  end
end

# post "/songs/new" do
# 	p params
# 	true
# end
post "/song/new" do |artist, name|
	artist = params["artist_name"]
	song = params["song_name"]
	p params
	puts "Added #{song} by #{artist}"
	songs += 1
  true
end

get "/enough" do
	"Modern music is FUCKING useless!!!"
end











