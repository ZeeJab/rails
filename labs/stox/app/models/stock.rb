# == Schema Information
#
# Table name: stocks
#
#  id         :integer          not null, primary key
#  symbol     :string(255)
#  quote      :string(255)
#  average    :decimal(, )
#  high       :decimal(, )
#  low        :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stock < ActiveRecord::Base
end
