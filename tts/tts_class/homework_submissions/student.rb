require './person'			#This will search current folder for class to be inherited

class Student < Person
	def learning
		puts "#{@first_name} is learning"
	end
end

s=Student.new("Mike","DeBerry","Male",54)
s.learning