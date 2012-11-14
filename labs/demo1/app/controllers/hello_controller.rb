class HelloController < ApplicationController
	#class name and file name are identical
	#and it inherits from the application_controller
	def world
		#this is the action in hello#world
		#a method inside a controller is called an action
		#inside any other class its called a method
		render :text => "hello world!!!"
		#render some text out to the browser that says hello world
	end

	def zahra
		render :text => "jabini"
	end

	def dogs
		render :text => "cats"
	end

	def ruby
		render :text => "rails"
	end
end
