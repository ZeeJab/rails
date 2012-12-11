class StackTest

	# def main(value)
	# 	factorial(value)
	# end

  def main(value)
    fibonacci(value)
  end

	# def factorial(value)
	# 	if value <= 1
	# 		1
 #  		else
 #    		value * factorial( value - 1 )
 #  		end
	# end

  def fibonacci(value)
    if value > 2
      fibonacci(value - 1) + fibonacci(value - 2)
    else
      1
    end 
  end

  # def fibonacci(value)
  #   if value <=2
  #     1
  #   else
  #     fibonacci(value -1 ) + fibonacci(value - 2)
  #   end
  # end


	# def x(value)
	# 	if value != 1
	# 		x(value - 1)
	# 	end
	# 	puts value
	# end
end
