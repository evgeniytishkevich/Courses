def leap_year?(year)
  (year % 400).zero? || ((year % 4).zero? && year % 100 !=0)
end

def days_in_february(year)
  leap_year?(year) ? 29:28 ###тернарный оператор(если тру-1, если фалс-2)
end

def month_by_year(year)
  [31, days_in_february(year), 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
end

def calc_total(day, month, year)
  return day if month==1
  x=month_by_year(year).first(month-1).sum+day
  print "Number day with begin year #{x}"
end



def get_data 
  puts "Enter data dd.mm.yyyy"	
  dd_mm_yyyy = gets.chomp.split(".")
  dd_mm_yyyy.map! {|i| i.to_i}

  day=dd_mm_yyyy[0]
  month=dd_mm_yyyy[1]
  year=dd_mm_yyyy[2]
  return day, month, year
end

day, month, year = get_data

while (month > 12 || day > month_by_year(year)[month - 1]) == true
  puts "Not correct data/print again!"
  day, month, year = get_data
  break if (month > 12 || day>month_by_year(year)[month - 1]) == false
end

puts calc_total(day, month, year)