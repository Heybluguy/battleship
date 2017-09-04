require_relative "lib/ship"
require_relative "lib/board"

my_ship = Ship.new("b3", "d3", 3)
puts my_ship.coordinate_range
puts my_ship.valid_coordinates?

board = Board.new

begin
    board.place_ship(my_ship)
rescue InvalidCoordinateError
  puts "some message"
end





#!/usr/bin/env ruby -wK   <-- run w/o ruby or rb
