class Board

  # Actions after a game move
  HIT = "Hit"
  MISS = "Miss"
  SUNK = "Sunk"
  GAME_OVER = "Game Over"

  def initialize(initial_state, board_size)
    @board_size = board_size
    # A compressed representation of the game board, mapping x,y coordinates to boats.
    # @board["1,2"] => nil or Integer or "M" (miss)
    @board = {}
    # List of all boat objects, knowing all of their cells and which have been hit.
    @boats = []
    initial_state.each { |boat_state|
      boat = Boat.new(boat_state)
      add_boat_to_board(boat)
    }
  end

  # Adds boat to board
  # Assumes that boat is actually on the board.
  def add_boat_to_board(boat)
    @boats << boat
    boat_id = @boats.length - 1

    boat.positions.keys.each { |pos|
      puts "Putting boat #{boat_id} at #{pos}"
      @board[pos] = boat_id
    }
  end


  # @param x Integer
  # @param y Integer
  # @return {HIT, MISS, SUNK, GAME_OVER}
  def attack(x,y)
    pos = "#{x},#{y}"
    boat_id = @board[pos]
    if boat_id.nil? || boat_id == "M"
      @board[pos] = "M"
      return MISS
    end

    # We did hit the boat, update posiion to be hit
    boat = @boats[boat_id]
    boat.attack(x,y)

    if boat.sunk?
      # Have all boats been sunk?
      if @boats.all? { |boat| boat.sunk? }
        return GAME_OVER
      end
      return SUNK
    end
    return HIT
  end

  # Prints out the current status of the board
  #  _  => empty cell
  #  M  => a shot that hit an empty cell (a Miss)
  #  1  => a un-hit boat cell
  # X1X => a hit boat cell.
  def print_board()
    (0..@board_size).each { |y|
      (0..@board_size).each { |x|
        key = "#{x},#{y}"
        boat_id = @board[key]
        if boat_id == "M" # Miss here
          print " M "
        elsif boat_id.is_a?(Integer) # Boat here!
          boat = @boats[boat_id]
          print (boat.positions[key]) ?  "X#{boat_id}X" : " #{boat_id} "
        else # Nothing here!
          print " _ "
        end
      }
      print "\n"
    }
    print "\n"
  end

end