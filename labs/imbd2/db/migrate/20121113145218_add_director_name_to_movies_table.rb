class AddDirectorNameToMoviesTable < ActiveRecord::Migration
  def change
  	add_column :movies, :director_name, :string
  	#you're adding a column to the already existing table, with the new column name and the column type
  end
end
