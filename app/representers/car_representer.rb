class UserRepresenter
  def initialize(car)
    @car = car
  end

  def as_json
    {
      id: car.id,
      name: car_name(car),
      transmission: car.transmission,
      ac: ac?(car),
      max_seat_capacity: car.max_capacity
    }
  end

  private

  def car_name(car)
    "#{car.make} #{car.model} #{car.year} #{car.color}"
  end

  def ac?(car)
    car.ac == true ? 'Yes' : 'No'
  end

  attr_reader :car
end
