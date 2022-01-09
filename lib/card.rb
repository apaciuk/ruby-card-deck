# frozen_string_literal: true

# A single card Object

class Card
  include Comparable

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def to_s
    "The #{human_value} of #{@suit}"
  end

  def <=>(other)
    value <=> other.value
  end

  def self.build(suit)
    (1..13).map { |value| new(value, suit) }
  end

  def human_value
    case value
    when 1
      :ace
    when 11
      :jack
    when 12
      :queen
    when 13
      :king
    else
      value
    end
  end

  protected

  attr_reader :value

end
