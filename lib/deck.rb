# frozen_string_literal: true

require_relative './card'

# a collection of cards

class Deck 
  def initialize  
    @cards = [Card.new(1, :spades), Card.new(2, :spades)].shuffle
  end

  def draw 
    @cards.pop
  end
end
