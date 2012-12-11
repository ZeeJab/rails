class CreateQuotesTable < ActiveRecord::Migration
  def change
  create_table :quotes do |t|
      t.decimal :quote
      t.integer :stock_id
      
      t.timestamps
    end
  end
end
