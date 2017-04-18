class Word < String	  # Word inherited from String class
	
	def very_long?(string)
		if string.length >= 10
			puts "True"
		else
			puts "False"
		end
	end
	
end

w = Word.new
puts w.very_long?("this string is very long")
puts Word.new.very_long?("this string is very long")
puts Word.new.length	# this works if there is a String inheritance.