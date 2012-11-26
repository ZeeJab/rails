# == Schema Information
#
# Table name: creatures
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  weapon           :string(255)
#  password_digest  :string(255)
#  creature_type_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Creature < ActiveRecord::Base
	belongs_to :creature_type 
	#belogs to is always on the guy with the foreign key
	has_many :sent_messages, :class_name => 'Message', :foreign_key => 'sender_id'
	#rails will look for a table and model called sent messages and it wont find it
	# so you'll need to give it extra info, as in what the class name is and what the foreign key is called
	has_many :received_messages, :class_name => 'Message', :foreign_key => 'receiver_id'
end
