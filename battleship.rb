require_relative "lib/ship"
require_relative "lib/board"

my_ship = Ship.new("a3", "a1", 3)
puts my_ship.coordinate_range
puts my_ship.valid_coordinates?
