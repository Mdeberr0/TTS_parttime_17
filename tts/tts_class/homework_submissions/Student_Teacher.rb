
Students = []
Teachers = []
def type(name)
	if name == ""
		puts "Must enter a valid name"
	elsif name.downcase == "done"
	else
		if name.upcase =~ /MR./ || name.upcase =~ /MRS./ || name.upcase =~ /MISS./
			Teachers.push name
			puts "Teachers please upload next weeks lesson plan"
		else
			Students.push name
			puts "Students please download this weeks assignments."
		end
	end
end
	puts "If you are a student enter your first and last name IE: John Smith or Jane Smith"
	puts "IF you are a teacher enter your Honoric and last name IE: Mr/Mrs/Miss.Smith"
	puts "Type done when complete"
	name=""
	until name.downcase == "done"
		puts "enter name"
		name=gets.upcase.chomp
		puts name
		type name
	end
	puts Teachers
	puts ""
	puts Students
	
