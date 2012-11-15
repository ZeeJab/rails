class AnimalsController < ApplicationController
	def index
		@animals = Animal.all #shows all the animals and put them inside the instance variable to be able to view in the view 
	end

	def show
		animal_id = params[:id]
		@animal = Animal.find(animal_id) #we have now retrieved this animal
	end

	def new
		@animal = Animal.new #a blank animal object
	end

	def edit
		@animal = Animal.find(params[:id])
	end

	def create
		@animal = Animal.new(params[:animal])

		if @animal.save #.save returns true if the validation passes and fail if it fails
			redirect_to animals_path #after the parameters come into the animal and passes, then it redirects you to the animal page 
		else #if it didnt get saved
			render :new #this renders out the new.html.erb	 again, it doesnt go back up to the new method 
			# it just means execute html not go back up 
		end
	end

	def update
		@animal = Animal.find(params[:id])

		if @animal.update_attributes(params[:animal]) #lets you update all the attributes of an animal in mass
			redirect_to @animal #the default for rails is that when you have an object by itself it'll default to its show page
		else
			render :edit
		end
	end

	def destroy
		animal = Animal.find(params[:id])
		animal.delete
		redirect_to animals_path
	end

end
