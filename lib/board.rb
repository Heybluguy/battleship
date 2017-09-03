class Board

  def place_ship(ship)
    raise SomeError unless ship.valid_coordinates?
    # raise AnotherError unless validate_wrap_board

    ship.coordinate_range.each do |coordinate|
      board_matrix[coordinate] = [true, "HM"]
    end
  end
end
# validate if wrap around board
# add initialzier on board to set matrix
