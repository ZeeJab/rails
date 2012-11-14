class HomeController < ApplicationController
	def start
	end

	def create
		@name = params[:name]
		@length = @name.length
		# <%= "#{@name} is #{@name.length} characters long" %> 
		#or you can put this in the create.html.erb file
	end


end
