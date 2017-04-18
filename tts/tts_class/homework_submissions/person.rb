class Person

	attr_accessor	:first_name, :last_name, :gender, :age
	
	def initialize(first_name, last_name, gender, age)	# This is run when .new is called.
		@first_name=first_name		# instance variable
		@last_name=last_name
		@gender=gender
		@age=age
	end
	
	def introduction
		puts "#{@first_name} #{@last_name} is a #{@age} year old #{@gender}"
	end
	
end

class Animal
	attr_accessor :type_creature, :enviorment, :locomotion, :num_of_limbs, :outer_layer
	
	def initialize (type_creature,enviorment, locomotion, num_of_limbs, outer_layer)
		@locomotion=locomotion
		@num_of_limbs=num_of_limbs
		@outer_layer=outer_layer
		@enviorment=enviorment
		@type_creature=type_creature
	end
	def introduction
		puts "A #{@type_creature} has #{@num_of_limbs}, its method of movement is #{@locomotion}. \n Its outer layer is #{@outer_layer}, its enviorment is #{@enviorment}"
	end
end

#p=Person.new("Mike","DeBerry","Male",54)
#p.introduction
#a=Animal.new("Fish","Water","Swim","Fins","Scale")  #need to be in the order you initialize in class.
#a.introduction