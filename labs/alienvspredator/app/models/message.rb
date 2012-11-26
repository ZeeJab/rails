# == Schema Information
#
# Table name: messages
#
#  id           :integer          not null, primary key
#  message_text :text
#  sender_id    :integer
#  receiver_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Message < ActiveRecord::Base
end
