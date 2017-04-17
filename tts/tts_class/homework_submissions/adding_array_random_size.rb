numgrp1=[]
numgrp2=[]
numgrp3=[]
def Populate_array(passdarry, numinarry)
	for x in 1..numinarry
		passdarry.push rand(numinarry)
	end
end
def AddAndPrintArrays(array1,array2)
	numgrp3 = array1.zip(array2).each_with_object([]){ |( array1,array2 ), m| m << array1.to_i + array2.to_i }
	if array1.length >= array2.length
		for x in 0..array1.length-1
			if x > array2.length-1
				puts " #{array1[x]} + 0 = #{numgrp3[x]} "
			else
				puts " #{array1[x]} + #{array2[x]} = #{numgrp3[x]} "
			end
		end
	elsif array2.length > array1.length
		for x in 0..array2.length-1
			if x > array1.length-1
				puts " 0 + #{array2[x]} = #{array2[x]} "
			else
				puts " #{array1[x]} + #{array2[x]} = #{numgrp3[x]} "
			end
		end
	else
	end
end

puts "How many items in group one"
grp1items=gets.chomp
puts "How many items in group two"
grp2items=gets.chomp
Populate_array(numgrp1, grp1items.to_i)
Populate_array(numgrp2, grp2items.to_i)
AddAndPrintArrays(numgrp1,numgrp2)



