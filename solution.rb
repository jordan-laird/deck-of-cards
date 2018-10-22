require 'pry'

class Deck

    attr_accessor :cards

    def initialize()
        @cards = []
        generate_cards
    end

    def generate_cards
        ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"].each do |rank|
            ["Heart", "Diamond","Spade", "Club"].each do |suit|
               @cards <<  Card.new(suit, rank)
            end
        end

        @cards
    end

    def choose_card
        chosen_card = @cards.delete_at(rand(@cards.length))

        # binding.pry

        return chosen_card

    end
    

end

class Card

    attr_accessor :rank, :suit

    def initialize(suit,rank)
        @rank = rank
        @suit = suit
    end


end

# binding.pry
