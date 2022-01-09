# frozen_string_literal: true

require './lib/deck'

deck = Deck.new

card_1 = deck.draw
card_2 = deck.draw

puts "First card: #{card_1}"
puts "Second card: #{card_2}"

if card_1 > card_2
  puts "#{card_1} wins!"
end

if card_2 > card_1
  puts "#{card_2} wins!"
end

if card_1 == card_2
  puts "#{card_1} and #{card_2} are equal."
end

