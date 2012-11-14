class AddMoviesTable < ActiveRecord::Migration
  def change
  	create_table :movies do |t|
  		t.string :name
  		t.decimal :gross
  		t.string :poster #this is gonna be an image of some movie poster
  		t.text :actors
  		t.timestamps
  	end
  end
end
