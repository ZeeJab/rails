class HomeController < ApplicationController
	def stock
	end

	def create
		@stocks = params[:stock].split(', ')
	end

end
