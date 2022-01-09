# frozen_string_literal: true

# A single card Object

class Card
  include Comparable

  HUMAN_VALUES = {
    1 => :ace,
    2 => 2,
    3 => 3,
    4 => 4,
    5 => 5,
    6 => 6,
    7 => 7,
    8 => 8,
    9 => 9,
    10 => 10,
    11 => :jack,
    12 => :queen,
    13 => :king
  }.freeze

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

  def human_value
    HUMAN_VALUES[value]
  end

  protected

  attr_reader :value

end
