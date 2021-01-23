class CarsRepresenter
  def initialize(cars)
    @cars = cars
  end

  def as_json
    cars.map do |car|
      {
        id: car.id,
        owner: car.user.username,
        name: car_name(car),
        transmission: car.transmission,
        ac: ac?(car),
        max_seat_capacity: car.max_capacity,
        image: car.image_url,
        date_added: car.created_at
      }
    end
  end

  private

  def car_name(car)
    "#{car.make} #{car.model} #{car.year} #{car.color}"
  end

  def ac?(car)
    car.ac == 'true' ? 'Yes' : 'No'
  end

  attr_reader :cars
end
