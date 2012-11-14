class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end

	def new
	end

	def create
		movie_name = params[:name] #name is the key inside the params hash
		poster = params[:poster]
		Movie.create(:name => movie_name, :poster => poster)
		redirect_to movies_path #you're redirecting it to the movies page, after this new movie has been created
	end

	def destroy
		movie = Movie.find(params[:id]) #this gets the id of the movie that's being destroyed, and then it becomes a movie object
		movie.delete #and then it deletes that record from the database
		redirect_to movies_path #and then take me back to the index page if you don't specify this it will look for destroy.html.erb
	end


end
