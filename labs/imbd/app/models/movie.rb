# == Schema Information
#
# Table name: movies
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  description  :text
#  gross        :decimal(, )
#  rating       :string(255)
#  tickets_sold :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

#models are always singular but the the migration file [table] it talks to is plural
class Movie < ActiveRecord::Base
	attr_accessible :name, :description, :gross, :rating, :tickets_sold 
	#this allows you to do mass assignmet when you create an object
end
