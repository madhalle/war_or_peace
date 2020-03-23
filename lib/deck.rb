

class Deck
  attr_reader :cards, :deck1, :deck2
  def initialize(cards)
    @cards = cards
    @deck1 = []
    @deck2 = []
  end


  def rank_of_card_at(index)
  #require "pry"; binding.pry
    @cards[index].rank

  end

  def high_ranking_cards
    high_ranking = []
    @cards.each do |card|
      if  card.rank >= 11
        high_ranking << card
      end
    end
    high_ranking

  end
  #
  def percent_high_ranking
    count = 0
    @cards.each do |card|
      if card.rank >= 11
        count += 1
      else
        count += 0
      end
    end
    ((count.fdiv((@cards.count).to_f))*100).round(0)

  end


  def remove_card
    @cards.shift
    @cards
  end

  def add_card(card)
    @cards << card
  end

  def shuffle
    @cards = @cards.shuffle
  end

  def split_deck1
    @cards << @cards[0..26]
    @cards.flatten!
  end

  def split_deck2
    @cards << @cards[27..52]
    @cards.flatten!
  end


end
