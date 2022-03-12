/*
What is the probability of drawing two aces in a row from a deck of fifty-two cards
*/

float acesInDeck = 4.0;
float totalNumberOfCards = 52.0;

float prob1 = (acesInDeck / totalNumberOfCards) * 100;
float prob2 = (acesInDeck / totalNumberOfCards) *  (acesInDeck / totalNumberOfCards) * 100;

print("The probability of drawing an ace from the deck is: " + prob1);
print("\n");
print("The probability of drawing two aces in a row from the deck is: " + prob2);
