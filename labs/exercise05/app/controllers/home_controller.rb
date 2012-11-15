class HomeController < ApplicationController
	def movie
	end

	def create

		movies = params[:movie].gsub(' ', '+').split(',+')
		@objects = []
		@title = []
		@actors = []
		@year = []
		@rating = []
		@poster = []
		@genres = []
		@runtime = []
		movies.each do |m|
			@objects << JSON(HTTParty.get("http://www.omdbapi.com/?t=" + m))
			@title 
		end
	end
end
