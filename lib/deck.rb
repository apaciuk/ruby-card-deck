# frozen_string_literal: true

require_relative './card'

# a collection of cards

class Deck
  def initialize

    cards = [
      Card.build(:spades),
      Card.build(:hearts),
      Card.build(:diamonds),
      Card.build(:clubs)
    ].flatten
    @cards = cards.shuffle
  end

  def draw
    @cards.pop
  end
end
