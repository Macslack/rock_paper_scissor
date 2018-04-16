class RockPaperScissors

  def self.game(hand1, hand2)
    hands = [hand1,hand2]
    case hands
      # when hands['rock', 'paper'] || hands['paper', 'rock']
    when hands[0] = 'rock' && hands[1] = 'paper' || hands[0] = 'paper' && hands[1] = 'rock'
      return "paper beats rock"
      # when hands['scissors', 'paper'] || hands['paper', 'scissors']
    when hands[0] = 'scissors' && hands[1] = 'paper' || hands[0] = 'paper' && hands[1] ='scissors'
      return "scissors beats paper"
      # when hands['rock', 'scissors'] || hands['scissors', 'rock']
    when hands[0] = 'rock' && hands[1] = 'scissors' || hands[0] = 'scissors' && hand[1] ='rock'
      return "rock beats scissors"
    return "Draw" unless hands[0] != hands[1]
    end
  end
end
