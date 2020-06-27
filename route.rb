# Маршрут:
# Имеет начальную и конечную станцию, а также список промежуточных станций
# Может добавлять станцию в список
# Может удалять станцию из списка
# Может выводить список всех станций по-порядку от начальной до конечной

class Route

	attr_accessor :name

	def self.initialize(name = 'default', first_station, last_station)
		@name = name
		@stations_list = [first_station, last_station]
	end

	def add_station station
		if @stations_list.include? station
			puts "Station #{station} is already in stations list"
		else
			@stations_list.insert(-2, station)
			puts "Added new station #{station} to route #{@name}"
		end
	end

	def delete_station station
		unless @stations_list.include? station
			puts "There is no stations with name #{station}"
		else
			@stations_list.delete(station) 
			puts "Station #{station} deleted from route #{@name}"
		end
	end

	def show_all_stations
		@stations_list.each do |var|
			puts var
		end
	end
end


