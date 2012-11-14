class AddStocksUsersTable < ActiveRecord::Migration
    def change
  	create_table :stocks_users , :id  => false do |t| #this turns off automatic id generation
  		t.integer :stock_id
  		t.integer :user_id
  	end
  end
end
