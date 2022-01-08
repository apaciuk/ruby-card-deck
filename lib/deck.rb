# frozen_string_literal: true

require_relative './card'

# a collection of cards

class Deck
  SUITS = %i[spades hearts diamonds clubs].freeze
  def initialize
    cards = SUITS.map { |suit| Card.build(suit) }.flatten
    @cards = cards.shuffle
  end

  def draw
    @cards.pop
  end
end
