class Rover
	attr_accessor :x_coordinate, :y_coordinate, :direction
	def initialize(x_coordinate, y_coordinate, direction)
		@x_coordinate = x_coordinate
		@y_coordinate = y_coordinate
		@direction = direction
	end

	def instruction(action)
		array = action.upcase.split("")

		array.each do |x| 
			if x == "M"
				move
			elsif x == "R" 
				turn_right
			elsif x == "L"
				turn_left
			else 
				puts "Error, invalid instructions"
			end
		end

	end
			
	def move
			if direction == "N"
				@y_coordinate +=1

			elsif direction == "S"
				@y_coordinate -=1
				
			elsif direction == "E"
				@x_coordinate +=1

			elsif direction == "W"
				@x_coordinate -=1
				
			end
		
	end

	def turn_left 
		if direction == "N"
			@direction = "W"

		elsif direction == "S"
			@direction = "E"

		elsif direction == "W"
			@direction = "S"

		elsif direction == "E"
			@direction = "N"
		end
	end

	def turn_right
		if direction == "N"
			@direction = "E"

		elsif direction == "S"
			@direction = "W"

		elsif direction == "W"
			@direction = "N"

		elsif direction == "E"
			@direction = "S"
		end
	end

end

rover1 = Rover.new(1,1,"N")
rover1.instruction("mlrmmmmlrmlr")
puts rover1.x_coordinate
puts rover1.y_coordinate
puts rover1.direction

	

