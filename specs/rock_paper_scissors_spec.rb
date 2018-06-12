require('minitest/autorun')
require_relative('../models/rock_paper_scissors')

class TestRockPaperScissors < Minitest::Test

def setup
@game1 = RockPaperScissors.new('rock', 'paper')
@game2 = RockPaperScissors.new('scissors', 'paper')
@game3 = RockPaperScissors.new('rock', 'scissors')
@game4 = RockPaperScissors.new('rock', 'rock')
end

def test_return_hand_1
  assert_equal('rock', @game1.hand1)
end

def test_return_hand_2
  assert_equal('paper', @game1.hand2)
end

def test_paper_beats_rock
  assert_equal("paper wins", @game1.play)
end

def test_scissors_beats_paper
  assert_equal("scissors wins", @game2.play)
end

def test_rock_beats_scissors
  assert_equal("rock wins", @game3.play)
end

def test_matching_hands_returns_draw
  assert_equal("it's a draw", @game4.play)
end

end
