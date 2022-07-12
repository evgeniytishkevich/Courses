hh = {"yanvar" => 30, "fevral" => 28, "march" =>  30, "april"=>  31, "may"=> 30, "june" => 31, "july" => 30, "agust" => 29, "september" =>  30, "november" => 30, "desember" => 30,}
puts hh["march"]

hh.each do |k, v|
	if v==30
		puts "messyac where 30 days is - #{k}"
	end

end

arr=[]

10.upto(100) do |i|  

	if i%5 == 0
		arr<<i
	end
end

print arr

#############################

arr=(10..100).to_a

arr.delete_if {|x| x%5!=0}


print arr


################################
arr=(10..100).to_a

arr.each do |x|
	if x%5==0
		print "#{x}\t"
	end
end
#######################
alphabet=('a'..'z')
vowels={}



	alphabet.each_with_index do |key, index|
				vowels[key]=index+1 if %w(a e o u i).include?(key)

									
	
	end



puts vowels


