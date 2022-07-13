puts "a"
a=gets.chomp.to_i

puts "b"
b=gets.chomp.to_i

puts "c"
c=gets.chomp.to_i

d=b**2-4*a*c

if d.negative? 
  puts "d=#{d} no roots"
elsif d.zero?
  x=(-b)/(2*a)
  puts "d=#{d} 1x=#{x}"
elsif d.positive?
  sqr=Math.sqrt(d)	
  first=(-b+sqr)/(2*a)
  second=(-b-sqr)/(2*a)
  puts "d=#{d} 1x=#{first} 2x=#{second}"
end