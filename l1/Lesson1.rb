puts "Enter ur name"
name=gets.chomp

puts "Enter ur height"
height=gets.to_i

ideal_weight = (height -110)*1.15

if ideal_weight>0

	puts "#{name}, ur ideal weight is #{ideal_weight} kg"

	else

	puts "Ur weight is normal"
end