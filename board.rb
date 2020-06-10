# [{ x: 3, y: 1, length: 4, isVertical: true }, ]
# Board should be able to be *large*
# max boats is 100
# no "player" concept.
# Want a way to say "show me the board"

class Board

  # Actions after a game move
  HIT = "Hit"
  MISS = "Miss"
  SUNK = "Sunk"
  GAME_OVER = "Game Over"

  # Boat Status
  STATUS_ALIVE = "alive"
  STATUS_SUNK = "sunk"

  def initialize(initial_state)
    # A compressed representation of the game board, mapping x,y coordinates to boats.
  # @board["1,2"] => nil or Integer
    @board = {}
    # List of all boat objects, knowing all of their cells and which have been hit.
    @boats = []
    initial_state.each { |boat|
      add_boat_to_board(boat)
    }
  end

  # Adds boat to board
  # Assums that boat is actually on the board.
  def add_boat_to_board(boat)
    @boats << boat
    boat_id = @boats.length - 1
    boat[:status] = STATUS_ALIVE
    boat[:positions] = {}

    x = boat[:x] #x is horizontal axis
    y = boat[:y] # y ix vertical axis
    (1..boat[:length]).each { |i|
      puts "Putting boat #{boat_id} at #{x},#{y}"
      @board["#{x},#{y}"] = boat_id
      boat[:positions]["#{x},#{y}"] = true
      x = boat[:isVertical] ? x : (x + 1)
      y = boat[:isVertical] ? (y + 1) : y
    }
  end


  # @param x Integer
  # @param y Integer
  # @return {HIT, MISS, SUNK, GAME_OVER}
  def attack(x,y)
    pos = "#{x},#{y}"
    boat = @board[pos]
    if boat.nil?
      return MISS
    end

    # We did hit the boat, update posiion to be hit
    boat[:positions][pos] = false

    # If all positions have been hit, update boat to sunk
    if boat[:positions].values().all? { |pos| pos == false }
      boat[:status] = STATUS_SUNK

      # Have all boats been sunk?
      if boats.all? { |boat| boat[:status] == STATUS_SUNK }
        return GAME_OVER
      end
      return SUNK
    end
    return HIT
  end

end

Board.new([{ x: 3, y: 1, length: 4, isVertical: true }])
