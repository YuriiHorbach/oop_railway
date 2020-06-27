# Станция:
# Имеет название, которое указывается при ее создании
# Может принимать поезда
# Может показывать список всех поездов на станции, находящиеся в текущий момент
# Может показывать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
# Может отправлять поезда (при этом, поезд удаляется из списка поездов, находящихся на станции).

class Station

	attr_accessor :name

	def initialize(name = 'Station')
		@name = name
		@train_on_station = {}
		puts "Station with name #{name} has been created"
	end	

	def accept_train(train, train_type)
		if train.nil? && train_type.nil?
			puts "Can`t accept such train"
		else
			puts "Train #{train} on station #{@name} now"
			@train_on_station.store(train, train_type)
		end
		
	end

	def send_train(train)
		"Train #{train} left station #{@name}"
		@train_on_station.delete(train) 
	end

	def show_train_on_station
		if @train_on_station.length == 1 
			puts "There is #{@train_on_station.length} train on station #{@name}"
		else
			puts "There are #{@train_on_station.length} trains on station #{@name}"
		end
	end

	def show_train_type_on_station
		@train_on_station.group_by(&:last).map { |v, a| [v, a.count] }.to_h.each {|key, value| puts "#{key} is #{value}" }
		# @train_on_station.each_value {|value| puts value }
	end

end


