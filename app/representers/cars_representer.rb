# frozen_string_literal: true

class CarsRepresenter
  def initialize(cars)
    @cars = cars
  end

  def as_json
    cars.map do |car|
      {
        id: car.id,
        name: car_name(car),
        transmission: car.transmission,
        ac: ac?(car),
        max_seat_capacity: car.max_capacity
      }
    end
  end

  private

  def car_name(car)
    "#{car.make} #{car.model} #{car.year} #{car.color}"
  end

  def ac?(car)
    car.ac == true ? 'Yes' : 'No'
  end

  attr_reader :cars
end
