class InvalidCoordinateError < StandardError; end

class Board

  def render_board
    @board = {
    "A1"=>[false,“”],"A2"=>[false,“”],"A3"=>[false,“”],"A4"=>[false,“”],
    "B1"=>[false,“”],"B2"=>[false,“”],"B3"=>[false,“”],"B4"=>[false,“”],
    "B1"=>[false,“”],"C2"=>[false,“”],"C3"=>[false,“”],"C4"=>[false,“”],
    "D1"=>[false,“”],"D2"=>[false,“”],"D3"=>[false,“”],"D4"=>[false,“”]
    }
  end

  def render_map
    @map = "
      BATTLESHIP
     ============
      . 1  2  3  4
      A #{@board["A"]["1"][1]} #{@board["A"]["2"][1]} #{@board["A"]["3"][1]} #{@board["A"]["4"][1]}

      B #{@board["B"]["1"][1]} #{@board["B"]["2"][1]} #{@board["B"]["3"][1]} #{@board["B"]["4"][1]}

      C #{@board["C"]["1"][1]} #{@board["C"]["2"][1]} #{@board["C"]["3"][1]} #{@board["C"]["4"][1]}

      D #{@board["D"]["1"][1]} #{@board["D"]["2"][1]} #{@board["D"]["3"][1]} #{@board["D"]["4"][1]}
     ============"
   end

   def place_ship(first_coordinate, second_coordinate, size)

end




  # def place_ship(ship)
  #   raise InvalidCoordinateError unless ship.valid_coordinates?
  #   # raise InvalidCoordinateError unless validate_wrap_@board
  #
  #   ship.coordinate_range.each do |coordinate|
  #     @board_matrix[coordinate] = [true, "HM"]
  #   end
  # end
# validate if wrap around @board
# add initialzier on @board to set matrix
