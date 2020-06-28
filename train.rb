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

	attr_accessor :speed, :type,  :train_number, :route, :number

	def initialize (number, type, wagons_quantity=0)
		@type = type
		@speed = 0
		@wagons_quantity = wagons_quantity
		@number = number
    @train = {number => @type}
	end


	def show_current_speed
		puts "Train`s current speed is #{@speed} km/hour"
	end

	def brake
		if speed_zero?
			puts "Train has stoped"
		end
	end

	def show_wagon_quantity
		puts "There is #{@wagons_quantity} wagons in train #{@number}"
	end

	def add_wagon
		if speed_zero?
			@wagons_quantity += 1
			show_wagon_quantity
		end
	end

	def remove_wagon
		if speed_zero?
			@wagons_quantity -= 1
			show_wagon_quantity
		end

	end

	def take_route(station)
		@station = station
		puts "Train"
	end

	def move(station)
    if @route.include?(station)
      @station = station
      puts "Поезд №#{@number} приехал на с станцию #{@station}"
    else
      puts "Такой станции нет в маршруте"
    end
  end

  def list
    return {@number => @type}
  end

  private

  def speed_zero?
    @speed.zero?
  end

end