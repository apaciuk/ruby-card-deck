# frozen_string_literal: true

# A single card Object

class Card
  attr_accessor :value, :suit

  def initialize(value, suit)
    @value = value 
    @suit = suit
  end

  def value
    case @value
    when 1
      :ace
    else
      @value
    end
  end
end
