# blackjack_score.rb

VALID_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']

def blackjack_score(hand)
  raise ArgumentError, "Too many cards!" if hand.length > 5

  score = 0
    hand.each do |card|
      raise ArgumentError, "Sorry, #{card} is an invalid card." if !VALID_CARDS.include?(card)

      case card
      when 2, 3, 4, 5, 6, 7, 8, 9
        score += card
      when "Jack", "Queen", "King"
        score += 10
      when "Ace"
        score += 11
      end
    end

  #Make Aces a '1' if score goes over 21
    if hand.include? "Ace"
        if score > 21
        score -= 10
        end
    end

     raise ArgumentError, "Bummer! You went over 21. Better luck next time!" if score > 21

  return score

end

#You will write a method called:  `blackjack_score` which take an array of card values and returns the blackjack score.  The card values can be any of the following, number values 1-9, "King", "Queen", "Jack".  If the array contains an invalid card value or the total exceeds 21, raise an `ArgumentError`.  For example `blackjack_score([1, 5, 3])` will return 19.  You should also raise an error if the hand contains more than 5 cards.
#
# In this exercise you will complete the given tests in `test/blackjack_score_test.rb` and updating the `blackjack_score` method in `lib/blackjack_score.rb` to make it pass.
#
# Step 1:  Complete the given test
# Step 2:  Update `blackjack_score` to pass the test
# Step 3:  Move to the next test