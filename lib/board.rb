
class Board

  attr_accessor :cells
  attr_reader

  @@cells = []

  def initialize
    reset!
  end

  def reset!
    self.cells = Array.new(9, " ")
  end

  def display
    puts " #{self.cells[0]} | #{self.cells[1]} | #{self.cells[2]} "
    puts "-----------"
    puts " #{self.cells[3]} | #{self.cells[4]} | #{self.cells[5]} "
    puts "-----------"
    puts " #{self.cells[6]} | #{self.cells[7]} | #{self.cells[8]} "
  end

  def position(board_location)
    self.cells[board_location.to_i - 1]
  end

  def full?
    self.cells.all? { |p| p != " "}
  end

end
