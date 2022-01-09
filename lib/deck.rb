# frozen_string_literal: true

require_relative './card'

# a collection of cards

class Deck
  SUITS = %i[spades hearts diamonds clubs].freeze
  def initialize
    @cards = SUITS.map { |suit| build(suit) }.flatten.shuffle
  end

  def draw
    @cards.pop
  end

  private

  # @param [Object] suit
  def build(suit)
    (1..13).map { |value| Card.new(value, suit) }
  end
end
