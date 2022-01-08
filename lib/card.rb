# frozen_string_literal: true

# A single card Object

class Card
  attr_accessor :suit

  def initialize(value, suit)
    @value = value 
    @suit = suit
  end

  def value
    case @value
    when 1
      :ace
    when 11
      :jack
    when 12
      :queen
    when 13
      :king
    else
      @value
    end
  end
end
