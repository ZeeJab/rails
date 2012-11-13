class RemoveNameFromMoviesTable < ActiveRecord::Migration
  def change
  	remove_column :movies, :name 
  	#this is how you nuke a column from a table 
  	
  end

end
