class Ship
  attr_reader :first_coordinate, :second_coordinate, :size, :coordinate_range

  def initialize(first_coordinate, second_coordinate, size)
    @first_coordinate = first_coordinate
    @second_coordinate = second_coordinate
    @size = size
    @coordinate_range = construct_coordinates
  end

  def valid_coordinates?
    if size == coordinate_range.size
      true
    else
      false
    end
  end

  private def construct_coordinates
    sorted = []
    if first_coordinate[0] == second_coordinate[0]
      sorted = [first_coordinate[1], second_coordinate[1]].sort
      points = Range.new(sorted.first, sorted.last).to_a
      points.map { |lane|  "#{first_coordinate[0]}#{lane}" }
    elsif first_coordinate[1] == second_coordinate[1]
      sorted = [first_coordinate[0], second_coordinate[0]].sort
      points = Range.new(sorted.first, sorted.last).to_a
      points.map { |lane|  "#{lane}#{first_coordinate[1]}" }
    else
      sorted
    end
  end



end
