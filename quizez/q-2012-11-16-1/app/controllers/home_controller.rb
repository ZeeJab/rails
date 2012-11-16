class HomeController < ApplicationController
	def start
	end

	def post
		@number = params[:number].to_i
		@boxes = @number.times.map{ |box| + 1 }
	end
end
