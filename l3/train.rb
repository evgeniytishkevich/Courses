class Train

  attr_accessor :speed, :number, :car_count, :route, :station
	attr_reader :type


	def initialize (number, type, car_count)
	  @number = number
	  @type = type
	  @car_count = car_count
	  @speed = 0
	  puts "Create the train № #{number}, type: #{type}, car count: #{car_count}"
	end

  def add_speed
    self.speed += 10
  end

  def stop
    self.speed = 0
  end 

  def show_speed
 	  puts "speed: #{self.speed}"
  end

  def attach_car_count  
	 	if speed.zero?
	 	  self.car_count += 1
	 	  puts "Train #{number} attach car, all cars count #{car_count} "
	 	else
	 		puts "Train is run, please stop here!"
	  end
  end

  def detach_car_count  
	 	if car_count.zero?
	 		puts "No car coutns !"
	 	elsif speed.zero?
	 	 self.car_count -= 1
	 	  puts "Train #{number} detach car, all cars count #{car_count} "
	 	else
	 		puts "Train is run, please stop here!"
    end
  end

 def get_route(route)
 	  self.route = route
    move_to(route.stations.first)
    puts "Train #{number} have this route: #{route.stations.first.name} - #{route.stations.last.name}"
    station.get_train(self)
  end

	def current_station
 	  puts "Train number: #{number} on station: #{station.name}"
  end

  def next_station
 	  station_index = route.stations.index(station)
    route.stations[station_index + 1].name if station_index != route.stations.size - 1
  end

  def pred_station
 	  station_index = route.stations.index(station)
 	  route.stations[station_index - 1].name if station_index != 0
  end

 def stations_info
 	  if route.nil?
 	  	puts 'Route not found'
 	  else
 	  	current_station 
 	  	next_station
 	  	pred_station
 	  end
  end

 def move_to(station)
 	  if route.nil?
 	  	puts 'Route not found'
 	  elsif @station == station
 	  	puts "Train number #{@number} currently on station #{@station.name}/ Try again" 	  	
 	  elsif route.stations.include?(station) 
 	    @station.send_train(self) if @station
 	    @station=station
 	    station.get_train(self)
 	  else
 	  	puts "#{station.name} not included in route of train #{number}"
 	  end
  end



end


