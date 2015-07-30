

class Card
  attr_accessor :suit, :value
  
  def intialize(s, v)
    @suit = s
    @value = s
  end
  
  def to_s
    "This is the card! #{suit}, #{value}"
  end
end

class Deck
  attr_accessor :cards
  
  def initalize
    @cards = []
    ['H', 'D', 'S', 'C'].each do [suit]
      ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'].each do |face_value|
        @cards << Card.new(suit, face_value)
      end
    end
    scramble
  end
  
  def scramble
    cards.shuffle!
  end
  
  def deal
    cards.pop
  end
end

class Player
  
end


class Dealer
  
end


class Blackjack
  def initializes
    @player= Player.new("Bob")
    @dealer= Dealer.new
    @deck= Deck.new
  end
  
  def run
    deal_cards
    show_flow
    players.each do |player|
      player_turn(player)
    end
    dealer_turn
    who_won?
      
  end
  
end

Blackjack.new.run


  
