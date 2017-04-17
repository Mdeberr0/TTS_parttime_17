#
#	Card deck I got from web
#
Rank = Struct.new(:rank, :value) do
  def to_s; rank end
  alias_method :inspect, :to_s
end

Card = Struct.new(:rank, :suit) do
  def to_s; "#{rank} of #{suit.capitalize}" end
  alias_method :inspect, :to_s
end

ranks = %w[Ace 2 3 4 5 6 7 8 9 10 Jack Queen King].map.with_index {|rank, value|
  Rank.new(rank, value + 1)
}
suits = [:spades, :hearts, :diamonds, :clubs]
#
# This part I wrote
#
newgame="Yes"	
until newgame=="NO" do
	deck = suits.product(ranks).map {|suit, rank| Card.new(rank, suit) }
	decka=deck.shuffle
	puts "Number of Players"
	numofplyrs=gets.chomp.to_i
		for x in 1..numofplyrs
			puts "Player \# #{x} cards"
			for y in 1..2
				puts	decka[0]
				decka.shift
			end
		end
	puts "New game Yes / No"
	newgame=gets.chomp.upcase
end