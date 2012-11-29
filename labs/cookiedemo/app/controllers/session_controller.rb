class SessionController < ApplicationController
	def new
	end

	def create
		# raise params.inspect
		ninja = Ninja.find_by_name(params[:name]) 
		#a dymanic method, rails knows that you have a name field, you can do find_by_email or whatever
		if ninja && ninja.authenticate(params[:password]) #after you find them and the password typed in matches the passowrd in the database
			redirect_to ninjas_path
		else
			#if ninja is nil then its false,
			render :new #show the the new.html.erb file
		end

	end

	def destroy
	end

end
