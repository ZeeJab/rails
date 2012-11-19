class AddStocksTable < ActiveRecord::Migration
  def change
  	create_table :stocks do |t|
  		t.string :symbol
  		t.string :quote
  		t.decimal :average
  		t.decimal :high
  		t.decimal :low
  		t.timestamps
  	end
  end

end
