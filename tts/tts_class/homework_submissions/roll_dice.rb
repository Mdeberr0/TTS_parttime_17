choice="yes"
until choice.upcase =~ /[NO]/
	die1=1+rand(6)
	die2=1+rand(6)
	puts "First roll was #{die1}. Second roll was #{die2}"
	puts "Go again Yes / No"
	choice=gets.chomp
end