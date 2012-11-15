class HomeController < ApplicationController
	def movie
	end

	def create

		movies = params[:movie].gsub(' ', '+').split(',+')
		@objects = []

		movies.each do |m|
			results = JSON(HTTParty.get("http://www.omdbapi.com/?t=" + m))
			@objects << results
		end
	end
end




		