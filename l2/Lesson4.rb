list = {}
total = 0
while true
  puts 'Enter shops  (Enter to stop)' 
  shops = gets.chomp

  if shops == ""
    break
  end

  puts 'Enter cost'
  cost = gets.chomp.to_i

  puts 'Enter amount'
  amount = gets.chomp.to_f
  
  sum_one = cost*amount
  total = total+sum_one

  list[shops] = {"cost"=>cost, "amount"=>amount, "total for this product"=>sum_one} 						
end

list
puts list

list
puts "Total summ: #{total}"