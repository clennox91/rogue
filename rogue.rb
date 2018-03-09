# main program that
# sets up the board & character & treasures
# do a loop where
#   print the current state
#   accepts input
#   changes the state based on the input

require './rogue_board.rb'

board = RogueBoard.new

while true
  # iterate over each position in the board and print it
  board.rows.each do |row|
    row.each do |cell|
      # print the cell
      print cell
    end
    puts
  end
  puts "here's the board!"
  puts "Please enter a direction you'd like to move: u, d, l, r"
  direction = gets.chomp
  if(direction == "d" || direction == "u" || direction == "l" || direction == "r")
    board.move_character(direction)
  else
    puts "invalid input: #{direction}"
  end
end