### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

# need to require Card

class CardGame

# function name should be snake_case
  def checkforAce(card)
    if card.value = 1 #this should be double equals
      return true
    else
      return false
    end
  end

# def spelt wrong and need comma between parameters in the brackets
  dif highest_card(card1 card2)
  #if should be indented
  if card1.value > card2.value
    return card # this should be card1
  else
    return card2
  end
end
end #this end is closing the Class in the wrong place, should be below self.cards_total

#this doesn't need to be a class method
def self.cards_total(cards)
  total # this needs to be set to zero here
  for card in cards
    total += card.value
    return "You have a total of" + total # should be interpolated AND this return statement should be outside the for loop
  end
end
```
