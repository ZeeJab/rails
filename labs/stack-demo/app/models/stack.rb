class Stack
	#a stack should contain some data
	def initialize
		@data = []
	end

	def push(value)
		#writing our own method for push if it didn't exist
		@data[@data.count] = value 
	end

	def pop
		@data.delete(@data[-1])
	end


	def to_s
		"There are #{@data.length} items in this stack : #{@data}"
	end
end
