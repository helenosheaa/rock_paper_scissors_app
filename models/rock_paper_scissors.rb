class RockPaperScissors

attr_reader(:hand1, :hand2)

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def play
    win = {
      "rock" => "scissors",
      "paper" => "rock",
      "scissors" => "paper"
    }
    if @hand1 == @hand2
      return "it's a draw"
    elsif win[@hand1] == @hand2
      return "#{@hand1} wins"
    elsif win[@hand2] == @hand1
      return "#{@hand2} wins"
    else
      return "Invalid choice"
    end
  end


end

# return "rock wins" if (@hand1 == "rock" && @hand2 == "scissors")
# return "paper wins" if (@hand1 == "rock" && @hand2 == "paper")
# return "scissors wins" if (@hand1 == "scissors" && @hand2 == "paper")
# return "it's a draw"
