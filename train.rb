=begin
Поезд:
Имеет, тип, который указывается при создании: грузовой, 
	пассажирский и количество вагонов.
Поезд может делать следующие вещи:
	набирать скорость
	показывать текущую скорость
	тормозить
	показывать количество вагонов
	прицеплять/отцеплять вагоны (по одному вагону за операцию, 
		метод просто увеличивает или уменьшает количество вагонов). Прицепка/отцепка вагонов
			может осуществляться только если поезд не движется.
Принимать маршрут следования
Перемещаться между станциями, указанными в маршруте.
Показывать предыдущую станцию, текущую, следующую, на основе маршрута
=end

class Train

	attr_accessor :speed, :type, :wagons_quantity, :train_number

	def initialize (train_number, type = 'pass', speed=0, wagons_quantity)
		@type = type
		@speed = speed
		@wagons_quantity = wagons_quantity
	end


	def show_current_speed
		puts "Train`s current speed is #{@speed} km/hour"
	end

	def brake
		@speed = 0
		puts "Train has stoped"
	end

	def show_wagon_quantity
		puts "There is #{@wagons_quantity} wagons in train"
	end

	def add_wagon
		if @speed == 0
			@wagons_quantity += 1
			show_wagon_quantity
		end
	end

	def remove_wagon
		if @speed == 0
			@wagons_quantity -= 1
			show_wagon_quantity
		end

	end
end