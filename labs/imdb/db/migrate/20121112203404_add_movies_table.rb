class AddMoviesTable < ActiveRecord::Migration
  def change
  	create_table :movies do |t| #create a table with the name of movie [always has to be plural]
  		#an id column gets created automatically
  		t.string :name #name is the name of the column and its a string type
  		t.text	:description
  		t.decimal :gross
  		t.string :rating
  		t.integer :tickets_sold
  		t.timestamps #these dont need to be given names
  		#timestamps creates two columns, a created_at and a updated_at
  	end
  end
end
