class HomeController < ApplicationController
	def create

		letter = params[:letter]
		
		case letter 
		when 'a'
			redirect_to home_path
		when 'b'
			redirect_to b_path
		when 'c' 
			redirect_to c_path
		end

		#YOU CAN ALSO redirect_to send("#{params[:letter]}_path")
		#send calls a method. checks whats inside to see if its a method and then calls it
		#dynamic meta programming in ruby
	end

	def a
	end

	def b
	end

	def c
	end
	
end
