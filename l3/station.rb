class Station

	attr_reader :name, :trains


	def initialize (name)
	  @name = name
	  @trains = []
	  puts "Station: #{name}"
	end
  
  def get_train(train)
    trains << train
    puts "ON station #{name} arrived train nubmer: #{train.number}"
  end

  def show_trains(type)
  	if type == 0
  		puts "Number of trains on the station #{name} as type is HUMAN "
  		trains.each do |train|
        puts train.number if train.type == 0
      end
    else 
  		puts "Number of trains on the station #{name} as type is GOODS "
  		trains.each do |train|
       puts train.number if train.type == 1
      end
    end
  end

  def send_train(train)
  	trains.delete(train)
  	puts "From station #{name} send train: #{train.number}"
  end

end




