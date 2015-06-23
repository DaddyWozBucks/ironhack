require 'sinatra'
require 'sinatra/reloader'

set :port, 3003
set :bind, '0.0.0.0'
visits ||= 0
song_list ||= []

class SongList
	def initialize(artist,song)
		@artist = artist
		@song = song
		@song_list = []
	end
	def add_song
		@artist = params["artist"]
		@song = params["song"]
		@song_list << [@artist, @song]
	end

end

get "/" do
	visits += 1
	@song_list = song_list
	erb :spot
	end


get "/addsongs" do
	p params
	@song_list = song_list
	erb :addsongs
end
