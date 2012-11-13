class ChangeDirNameToTextType < ActiveRecord::Migration
  def change
  	change_column :movies, :director_name, :text
  	#when you want to change a column that already exists
  	#we're changing the director name from a string to text
  end

end
