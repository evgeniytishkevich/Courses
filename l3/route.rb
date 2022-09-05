class Route

	attr_accessor :stations, :from, :to


	def initialize (from, to)
	  @stations = [from, to]
	  puts "Create route #{from.name} - #{to.name}"
	end

	def add_station(station)
    @stations.insert(-2, station)
    puts "Route #{stations.first.name} - #{stations.last.name} add station #{station.name} "
  end

  def delete_station(station)
    if [stations.first, stations.last].include?(station)
    	puts "U can't delete first/last station/try again"
    else
    	self.stations.delete(station)
    	puts "Route #{stations.first.name} - #{stations.last.name} delete #{station.name} "
    end
  end

  def show_stations
    puts "Route #{stations.first.name} - #{stations.last.name}. Stations included:  "
      stations.each do |station|
        puts "#{station.name}"
      end
  end
end