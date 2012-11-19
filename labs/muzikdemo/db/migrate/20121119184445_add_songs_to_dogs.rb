class AddSongsToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :song, :string
  end
end
