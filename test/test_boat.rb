require "minitest/autorun"
require './boat.rb'

class TestBoat < Minitest::Test

  def test_vertical_boat()
    boat = Boat.new({x: 1, y: 1, length: 2, isVertical: true})
    assert_equal(2, boat.positions.length)
    assert boat.positions.has_key?("1,1")
    assert boat.positions.has_key?("1,2")
  end

  def test_horizontal_boat()
    boat = Boat.new({x: 1, y: 1, length: 2, isVertical: false})
    assert_equal(2, boat.positions.length)
    assert boat.positions.has_key?("1,1")
    assert boat.positions.has_key?("2,1")
  end

  def test_attack()
    boat = Boat.new({x: 1, y: 1, length: 2, isVertical: false})
    refute(boat.positions["1,1"]) # Not hit yet
    boat.attack(1,1)
    assert(boat.positions["1,1"]) # Now hit.

    refute(boat.positions["2,1"]) # Not hit yet
    boat.attack(2,1)
    assert(boat.positions["2,1"]) # Now hit.
  end

    def test_sunk()
    boat = Boat.new({x: 1, y: 1, length: 2, isVertical: false})
    refute(boat.sunk?)
    boat.attack(1,1)
    refute(boat.sunk?)
    boat.attack(2,1)
    assert(boat.sunk?)
  end





end


