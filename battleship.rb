require './boat.rb'
require './board.rb'

# [{ x: 3, y: 1, length: 4, isVertical: true }, ]
# Board should be able to be *large*
# max boats is 100
# no "player" concept.
# Want a way to say "show me the board"


b = Board.new([{ x: 3, y: 1, length: 4, isVertical: true }, { x: 8, y: 2, length: 2, isVertical: false }], 10)
b.print_board()
puts "Attacking 0,0 -> ", b.attack(0,0)
b.print_board()
puts "Attacking 3,1", b.attack(3, 1)
b.print_board()
puts "Attacking 3,2 ->", b.attack(3,2)
puts "Attacking 3,2 ->", b.attack(3,3)
puts "Attacking 3,2 ->", b.attack(3,4)
b.print_board()
puts "Attacking 8,2 ->", b.attack(8,2)
puts "Attacking 9,2 ->", b.attack(9,2)
b.print_board()