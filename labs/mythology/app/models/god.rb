class God < ActiveRecord::Base
  attr_accessible :description, :name

  def self.text_search(query) #this makes a class method that gets used in the controller
  	self.where("name @@ :q or description @@ :q", :q => query)
  end
end
