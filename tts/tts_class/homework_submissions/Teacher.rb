require './person'

class Teacher < Person
	def teaching
		puts "#{@last_name} is teaching a class."
	end
end

t=Teacher.new("Mike","DeBerry","Male",54)
t.teaching