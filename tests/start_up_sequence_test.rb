require 'minitest/autorun'
require 'minitest/pride'
require './lib/start_up_sequence'

class StartUpSequencetest <Minitest::Test

  def test_that_it_exists
    new_game = StartUpSequence.new

    assert_instance_of StartUpSequence, new_game
  end

  def test_it_has_a_greeting
    new_game = StartUpSequence.new
    expected = "\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
    assert_equal expected, new_game.greeting
  end

  def test_it_gives_instructions
    new_game = StartUpSequence.new
    expected = "Prepare for battle!
    Place your 2 ships on your ocean grid by picking two
    coordinates for each ship by letter and number.
    For example, A1 A2 . On your turn, pick a coordinate
    to shoot. For example, D4 . If your shot is occupied
    by an opponent's ship, it's a hit! The first captain
    of the high seas to destroy all of the opponent's
    ships wins the game and the trident of Poseidon."

    assert_equal expected , new_game.instructions
  end

  

end
