arr = []

10.upto(100) do |i|  
  if i%5 == 0
    arr << i
  end
end

print arr

#############################

arr = (10..100).to_a
arr.delete_if {|x| x%5!=0}

print arr

################################
arr = (10..100).to_a

arr.each do |x|
  if x%5 == 0
    print "#{x}\t"
  end
end