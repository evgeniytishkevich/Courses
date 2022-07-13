hh = { "yanvar" => 30, "fevral" => 28, "march" =>  30, "april"=>  31, "may"=> 30, "june" => 31, "july" => 30, "agust" => 29, "september" =>  30, "november" => 30, "desember" => 30 }
puts hh["march"]

hh.each do |k, v|
  if v == 30
    puts "Month where 30 days is - #{k}"
  end
end



