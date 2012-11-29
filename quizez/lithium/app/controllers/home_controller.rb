class HomeController < ApplicationController
	def index
	end

	def name 
		@name = params[:name]
	end
end
