# frozen_string_literal: true

require_relative './card'

# a collection of cards

class Deck
  def initialize
    cards = %i[spades hearts diamonds clubs].map do |suit|
      Card.build(suit)
    end.flatten
    @cards = cards.shuffle
  end

  def draw
    @cards.pop
  end
end
