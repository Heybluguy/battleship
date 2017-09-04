require 'pry'
class StartUpSequence
  attr_reader :start_option
  def initialize
    divider
    puts "                   Welcome to BATTLESHIP"
  end


  def greeting
    puts "\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
    @start_option = gets.chomp.downcase
    if @start_option == "p" || @start_option == "play"
      divider
      #starts game
    elsif @start_option == "i" || @start_option == "instructions"
      instructions
    elsif @start_option == "q" || @start_option == "quit"
      divider
      puts "Ok have a great day."
      exit
    else
      divider
      greeting
    end
  end

  def instructions
    divider

    puts "Prepare for battle!
    Place your 2 ships on your ocean grid by picking two
    coordinates for each ship by letter and number.
    For example, A1 A2 . On your turn, pick a coordinate
    to shoot. For example, D4 . If your shot is occupied
    by an opponent's ship, it's a hit! The first captain
    of the high seas to destroy all of the opponent's
    ships wins the game and the trident of Poseidon.\n"
    greeting
  end

  def divider
    puts "___________________________________________________________________"
  end

end
new_game = StartUpSequence.new
new_game.greeting
# binding.pry
