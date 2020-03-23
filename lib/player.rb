
class Player
  attr_reader :name, :deck
  def initialize(name, deck)
    @name = name
    @deck = deck
  end


  def deck
    @deck.cards
    require "pry"; binding.pry
  end


  def has_lost?
    if @deck.cards.empty? == false
      false
    else
      true
    end
  end


  def remove_card
    @deck.cards.shift
    @deck.cards
  end
end
