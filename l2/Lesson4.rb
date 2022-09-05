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

    if cost.negative? 
      puts "Wrong data. Enter cost"
      cost = gets.chomp.to_i
    end

  puts 'Enter amount'
  amount = gets.chomp.to_f
  
  sum_one = cost*amount
  total += sum_one

  list[shops] = {"cost" => cost, "amount" => amount, "total for this product"=>sum_one} 						
end


puts list


puts "Total summ: #{total}"
  
  
        