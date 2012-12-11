class Node
	attr_accessor :data, :nxt, :prv #these are the links

	def initialize(value)
		@data = value
	end

	def to_s
		"#{prv.try(:data) || 0} <- #{data} -> #{nxt.try(:data) || 0}"
	end


end