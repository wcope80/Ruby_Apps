class Card
	attr_accessor :rank, :suit, :value
	
	def initialize(rank, suit, value)
		@rank = rank
		@suit = suit
		@value = value
	end
	
	def to_s
		"#{@rank} of #{suit}"
	end
end


def new_deck
	ranks = %w{A 2 3 4 5 6 7 8 9 10 J Q K}
	suits = %w{Spades Hearts Diamonds Clubs}
	deck = []
	suits.each do |suit|
		ranks.each_with_index do |rank,i|
			if !%w{J Q K}.include? rank	
				deck << Card.new(ranks[i], suit, i+1)
		    else		
				deck << Card.new( ranks[i], suit, 10 )
			end
		end
	end
	return deck
end

def draw_card(deck)
	card = deck.pop
end

def deal(hand, deck)
	hand << draw_card(deck)
	hand << draw_card(deck)
end

def handValue(hand)
	handVal =0
	hand.each do |card|
		handVal += card.value
	end
	return handVal
end

def status(hand)
	puts hand.each {|card| "#{card.rank} of #{card.suit}"}
	val = handValue(hand)
	puts "Value = #{val}"
end

def getChoice
	puts = "hit or stand?"
	choice = gets.chomp
end

def busted(hand)
	if handValue(hand) > 21
		return true
	else
		return false
	end
end


deck = new_deck
deck.shuffle!
hand = []

deal(hand,deck)
puts "you were dealt: "
status(hand)
choice = getChoice

while choice == "hit" do 
	hand << deck.pop
	 if busted(hand)
		val = handValue(hand)
	    puts "You busted with a #{handValue(hand)}"
		puts "Final hand: "
		status(hand)
		break
	 end
	  if handValue(hand) == 21
		 puts "Blackjack!!!"
		 status(hand)
		 break
	  end
	status(hand)	
	choice=getChoice
end

if choice == "stand"
	puts "you stood with: "
	status(hand)
end











