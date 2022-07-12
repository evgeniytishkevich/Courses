def checktr(s1, s2, s3)
	if s1+s2>s3 && s1+s3>s2 && s2+s3>s1
		print "treug syshestvyet\n"
	else	
		print "treug ne syshestvyet\n"
		abort
	end
end

puts "Enter 1 side"
s1=gets.chomp.to_i

puts "Enter 2 side"
s2=gets.chomp.to_i

puts "Enter 3 side"
s3=gets.chomp.to_i

checktr(s1, s2, s3)




max=[s1, s2, s3].max(2)
min=[s1, s2, s3].min(2)
puts max
min1=min[0]
min2=min[1]


if max**2 == min1**2 + min2**2

	puts "treug is pryamoyg"
else

	if 	max == min1 && max == min2
		puts "treug is ravnost"
	elsif max == min1 ||  max==min2 || min1 == min2
		puts "treug is ravnobedrenn"
	else
		puts "treug is common"
	end    
end

