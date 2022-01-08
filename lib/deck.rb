# frozen_string_literal: true

require_relative './card'

# a collection of cards

class Deck
  def initialize
    spades = Card.build(:spades)
    hearts = Card.build(:hearts)
    diamonds = Card.build(:diamonds)
    clubs = Card.build(:clubs)
    @cards = [spades, hearts, diamonds, clubs].flatten.shuffle
  end

  def draw
    @cards.pop
  end
end
